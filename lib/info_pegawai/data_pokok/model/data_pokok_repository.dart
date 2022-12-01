import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ekemenkeu/app/repository/ekemenkeu_repository.dart';
import 'package:ekemenkeu/config/api_url.dart';
import 'package:ekemenkeu/module/info_pegawai/data_pokok/model/data_pokok_model.dart';

class DataPokokRepository {
  EKemenkeuRepository _repository;

  DataPokokRepository(EKemenkeuRepository repository) {
    _repository = repository;
  }

  Future<DataPokok> getDataPokok() async {
    try {
      Response res = await _repository.dio.get(
          '${ApiUrl.serviceUrl}/hris/profil/Pegawai');
      log(jsonEncode(res.data));
      return DataPokok.fromJson(res.data["Data"]);
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }
}
