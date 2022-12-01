import 'package:dio/dio.dart';
import 'package:profilekemenkeu/app/repository/ekemenkeu_interceptors.dart';

class EKemenkeuRepository {
  Dio dio = Dio();

  EKemenkeuRepository() {
    dio.interceptors.add(EkemenkeuInterceptor(dio));
  }
}
