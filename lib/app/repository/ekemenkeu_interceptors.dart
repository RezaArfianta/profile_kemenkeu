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

    options.headers['Authorization'] =
        'Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6IjQyNDc0QTY4NDNBM0VBNTc2MTcyNDE2MTIxMEQ2OTlBMEZFNDQ2Q0EiLCJ0eXAiOiJhdCtqd3QiLCJ4NXQiOiJRa2RLYUVPajZsZGhja0ZoSVExcG1nX2tSc28ifQ.eyJuYmYiOjE2NzA0ODM2NzMsImV4cCI6MTY3MDUwMTY3MywiaXNzIjoiaHR0cHM6Ly9kZW1vLWFjY291bnQua2VtZW5rZXUuZ28uaWQiLCJhdWQiOlsiZnJvbnRlbmQubmFkaW5lIiwiYWdlbmRhLmVrZW1lbmtldSIsInJhcGF0LmVrZW1lbmtldSIsIm5vdGlmaWNhdGlvbi5la2VtZW5rZXUiLCJrZWhhZGlyYW4uZWtlbWVua2V1Iiwib3JnYW5pc2FzaS5ocmlzIiwicHJvZmlsLmhyaXMiLCJqYWJhdGFuLmhyaXMiLCJwYW5na2F0LmhyaXMiLCJkaWtsYXQuaHJpcyIsImtlbHVhcmdhLmhyaXMiLCJwZW5kaWRpa2FuLmhyaXMiLCJla2VtZW5rZXUiLCJrb2xhYm9yYXNpLmVrZW1lbmtldSIsInBlZ2F3YWkuZWtlbWVua2V1Il0sImNsaWVudF9pZCI6ImVrZW1lbmtldS1vYS1kZXYiLCJFbmFibGVNRkEiOiJmYWxzZSIsInN1YiI6IjJiN2EzYmRjLTBlZmYtNGFiMi1iNmI0LWY2MDEzNWRkZTk5OCIsImF1dGhfdGltZSI6MTY3MDQ4MzY0MiwiaWRwIjoibG9jYWwiLCJuYW1lIjoiRXJpdGEgWXVsaWFzdHV0aSIsImlkIjoiMTE1Mjc5IiwiYWRkcmVzcyI6IkFwdC4gR2FkaW5nIE5pYXMgUmVzaWRlbmNlIFRvd2VyIENocnlzYW50IE5vLiBDLzE3L0pEIEtlbGFwYSBHYWRpbmcgSmFrYXJ0YSBVdGFyYSIsInBob25lX251bWJlciI6IjA4MTIyNzA3NzQ3NyIsIm5pcCI6IjE5ODUwNzEzMjAxMDEyMjAwMSIsImphYmF0YW4iOiJQZWxha3NhbmEiLCJqZW5pc19qYWJhdGFuIjoiRnVuZ3Npb25hbCBVbXVtIFBOUyIsImtvZGVfb3JnYW5pc2FzaSI6IjM1MDMxMDE4MDIiLCJvcmdhbmlzYXNpIjoiU3ViYmlkYW5nIFBlcmFuY2FuZ2FuIGRhbiBQZW5nZW1iYW5nYW4gQXBsaWthc2kgSSwgQmlkYW5nIEFwbGlrYXNpLCBQdXNhdCBTaXN0ZW0gSW5mb3JtYXNpIGRhbiBUZWtub2xvZ2kgS2V1YW5nYW4sIFNla3JldGFyaWF0IEplbmRlcmFsIiwia29kZV9zYXRrZXIiOiI2NzI5MDYiLCJzYXRrZXIiOiJQdXNhdCBTaXN0ZW0gSW5mb3JtYXNpIGRhbiBUZWtub2xvZ2kgS2V1YW5nYW4iLCJncmF2YXRhciI6Imh0dHBzOi8vYWNjb3VudC5rZW1lbmtldS5nby5pZC9tYW5hZ2UvVXBsb2Fkcy8xOTg1MDcxMzIwMTAxMjIwMDEuanBnIiwicHJlZmVycmVkX3VzZXJuYW1lIjoiMTk4NTA3MTMyMDEwMTIyMDAxIiwiZW1haWwiOiJlcml0YS55QGtlbWVua2V1LmdvLmlkIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImp0aSI6IlpnY0FmS19rQWVRcHM5REx5THhCUlEiLCJzY29wZSI6WyJvcGVuaWQiLCJwcm9maWxlIiwiZnJvbnRlbmQubmFkaW5lIiwiYWdlbmRhLmVrZW1lbmtldSIsInJhcGF0LmVrZW1lbmtldSIsIm5vdGlmaWNhdGlvbi5la2VtZW5rZXUiLCJrZWhhZGlyYW4uZWtlbWVua2V1Iiwib3JnYW5pc2FzaS5ocmlzIiwicHJvZmlsLmhyaXMiLCJqYWJhdGFuLmhyaXMiLCJwYW5na2F0LmhyaXMiLCJkaWtsYXQuaHJpcyIsImtlbHVhcmdhLmhyaXMiLCJwZW5kaWRpa2FuLmhyaXMiLCJla2VtZW5rZXUiLCJrb2xhYm9yYXNpLmVrZW1lbmtldSIsInBlZ2F3YWkuZWtlbWVua2V1Il0sImFtciI6WyJwd2QiXX0.viRZ55btr3oBAb3XzMqZU12MiFPqnrbBzXIiop_Yvok9-uUlNQ6m8VHfthYWc9liq2WqAn3yYsG-sI4HnPRZz-ZbKOwdb8RBnLXLrl2UQmPxLyOvbj9maTTP8yOnehJr0J3QpK-4Ii8NjzGbqTZHZra5C0Ixw4IUC--fX3Na1P1WU-zzp-JdlvlJXlnFy9g87Fq53O_jBs_veu-l8BfrEbJkmKcSFkl4FWK2E9VjEU222l3flp2zjQo0wSC60F9hR_KeOdJdoyNOmyWNj_Q2C9T50aQ0TYsAj2CkUGJP9exTFcn5I1sN3VRoR0BrtXWogCwgtt2pFqdbC0TPn-ExH9iLVE1eQlmvJp_ErT5T8tkkwv1tbYthk6yIePJfQH6Mfa-cSVDxYY5Jf2DF_cqJ8-rHaxs6TsxHu3hEDq83I1ezjBVcJZqWr6jFk7u4xyEwPc5DJIILPeZlvgLqIVC_Ls9apuuMzrUOlZP5b25fOUWVz7CNOUicqrNbBceeUHzC_e0F2c1Nz3j_DZPFYicQXEWbdVAQd4_bNqfCNJL4vu42drgVe-_cSpXu4owta5yGmrEO4S9Q7Jw8CO8XOLuofnQ2mbCJPLW0F0FQkwIZ9KNZiAMF8TqCj9ubGRxMiJTbgGg5iFi5TofteMlcN-AtJfG--YEuyPeObRup4fXtC_c';
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
