import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:profilekemenkeu/info_pegawai/data_pokok/model/data_pokok_model.dart';

import '../../../api_url.dart';
import '../../../app/repository/ekemenkeu_repository.dart';

class DataPokokRepository {
  EKemenkeuRepository? repository;

  DataPokokRepository(EKemenkeuRepository repository) {
    repository = repository;
  }

  Future<DataPokok?> getDataPokok() async {
    try {
      Response res =
          await repository!.dio.get('${ApiUrl.serviceUrl}/hris/profil/Pegawai');
      log(jsonEncode(res.data));
      return DataPokok.fromJson(res.data["Data"]);
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }
}
