import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ekemenkeu/app/repository/ekemenkeu_repository.dart';
import 'package:ekemenkeu/config/api_url.dart';
import 'package:ekemenkeu/module/info_pegawai/screen/pegawai_model.dart';

class InfoPegRepository {
  EKemenkeuRepository _repository;

  InfoPegRepository(EKemenkeuRepository repository) {
    _repository = repository;
  }

  Future<List<Pegawai>> getInfoPegawai(key, limit, kdOrg) async {
    try {
      Response res = await _repository.dio.get(
          '${ApiUrl.serviceUrl}/hris/profil/Pegawai/GetAllLimited?limit=$limit&kdOrganisasi=$kdOrg&keyword=$key&status=Aktif');

      print(res.realUri);
      log(jsonEncode(res.data));
      return List<Pegawai>.from(
          res.data['Data'].map((i) => Pegawai.fromJson(i)));
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }

  Future<List<Organisasi>> getOrganisasi(key) async {
    try {
      print("ohehe");
      Response res = await _repository.dio.get(
          '${ApiUrl.serviceUrl}/hris/organisasi/Pegawai/GetPejabatOrganisasiByKeyword?keyword=' +
              key);
      print(res.realUri);
      log(jsonEncode(res.data));
      var list = List<Organisasi>.from(
          res.data['Data'].map((i) => Organisasi.fromJson(i)));
      res.data['Data'].map(
          (i) => {
            print(i)
          }
      );
      print(list);
      return list;
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }

  Future<List<Organisasi>> getOrgByKode(kode) async {
    try {
      Response res = await _repository.dio.get(
          '${ApiUrl.serviceUrl}/hris/organisasi/Referensi/GetByKodeInduk/' +
              kode);
      return List<Organisasi>.from(
          res.data['Data'].map((i) => Organisasi.fromJson(i)));
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }
}
