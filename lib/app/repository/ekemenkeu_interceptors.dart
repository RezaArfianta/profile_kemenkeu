import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ekemenkeu/global/ekemenkeu_storage.dart';
import 'package:ekemenkeu/module/login/service/login_service.dart';
import 'package:jiffy/jiffy.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class EkemenkeuInterceptor extends InterceptorsWrapper {
  final Dio _dio;
  int retryCounter;

  EkemenkeuInterceptor(this._dio) {
    retryCounter = 0;
  }

  bool isExpired(int expDateEpoch){
    var now = DateTime.now();
    var expiration = DateTime.fromMicrosecondsSinceEpoch(expDateEpoch);
    log("${Jiffy(now).yMMMMdjm} ${Jiffy(expiration).yMMMMdjm}", name: "ISIT EXPIRED");
    return DateTime.now().isAfter(DateTime.fromMicrosecondsSinceEpoch(expDateEpoch * 1000));
  }

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // ignore: unused_local_variable
    var token = EKemenkeuStorage.local.getString('access-token');

    var decodedToken = JwtDecoder.decode(token);
    // log("${JwtDecoder.isExpired(token)} ${isExpired(decodedToken["exp"])} ${decodedToken["exp"]}", name: "ISEXPIRED");

    if(JwtDecoder.isExpired(token)){
      print("refresh Token");
      await LoginService().refreshToken();
    }
    // if(retryCounter == 0){
    //   print("diubah $retryCounter");
    //   token = token.substring(0,  12);
    // }

    options.headers['Authorization'] = 'Bearer $token';
    //options.connectTimeout  = 1000;
    log(token);
    return super.onRequest(options, handler);

  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    retryCounter++;

    print("diretry $retryCounter");
    if (err.response != null &&
        err.response.statusCode == 401 &&
        retryCounter <= 3) {
      _dio.interceptors.requestLock.lock();
      _dio.interceptors.responseLock.lock();

      await LoginService().refreshToken();

      RequestOptions options = err.response.requestOptions;

      _dio.interceptors.requestLock.unlock();
      _dio.interceptors.responseLock.unlock();

      return _dio.request(options.path, data: options);
    }

    return super.onError(err, handler);
  }
}
