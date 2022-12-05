// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';

class EkemenkeuInterceptor extends InterceptorsWrapper {
  Dio dio;
  int? retryCounter;

  EkemenkeuInterceptor(this.dio) {
    retryCounter = 0;
  }

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // ignore: unused_local_variable
    // var token = EKemenkeuStorage.local.getString('access-token');

    // var decodedToken = JwtDecoder.decode(token);
    // // log("${JwtDecoder.isExpired(token)} ${isExpired(decodedToken["exp"])} ${decodedToken["exp"]}", name: "ISEXPIRED");

    // if(JwtDecoder.isExpired(token)){
    //   print("refresh Token");
    //   await LoginService().refreshToken();
    // }
    // if(retryCounter == 0){
    //   print("diubah $retryCounter");
    //   token = token.substring(0,  12);
    // }

    options.headers['Authorization'] = 'Bearer ';
    //options.connectTimeout  = 1000;
    log('');
    return super.onRequest(options, handler);
  }

  // EkemenkeuInterceptor copyWith({
  //   Dio? _dio,
  //   int? retryCounter,
  // }) {
  //   return EkemenkeuInterceptor(
  //     _dio ?? this._dio,
  //     retryCounter ?? this.retryCounter,
  //   );
  // }

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     '_dio': _dio.toMap(),
  //     'retryCounter': retryCounter,
  //   };
  // }

  // factory EkemenkeuInterceptor.fromMap(Map<String, dynamic> map) {
  //   return EkemenkeuInterceptor(
  //     Dio.fromMap(map['_dio'] as Map<String,dynamic>),
  //     map['retryCounter'] as int,
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory EkemenkeuInterceptor.fromJson(String source) => EkemenkeuInterceptor.fromMap(json.decode(source) as Map<String, dynamic>);

  // @override
  // String toString() => 'EkemenkeuInterceptor(_dio: $_dio, retryCounter: $retryCounter)';

  // @override
  // bool operator ==(covariant EkemenkeuInterceptor other) {
  //   if (identical(this, other)) return true;

  //   return
  //     other._dio == _dio &&
  //     other.retryCounter == retryCounter;
  // }

  // @override
  // int get hashCode => _dio.hashCode ^ retryCounter.hashCode;
}
