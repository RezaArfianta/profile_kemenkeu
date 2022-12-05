import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:profilekemenkeu/app/repository/ekemenkeu_repository.dart';
import 'package:profilekemenkeu/api_url.dart';
// import 'package:profilekemenkeu/auth/bloc/auth_bloc.dart';
import 'package:profilekemenkeu/info_pegawai/data_pokok/model/data_pokok_model.dart';
import 'package:profilekemenkeu/info_pegawai/riwayat/model/diklat_model.dart';
import 'package:profilekemenkeu/info_pegawai/riwayat/model/jabatan_model.dart';
import 'package:profilekemenkeu/info_pegawai/riwayat/model/pangkat_model.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class RiwayatRepository {
  EKemenkeuRepository? _repository;

  RiwayatRepository(EKemenkeuRepository repository) {
    _repository = repository;
  }

  Future<List<Pangkat>?> getRiwayatPangkat(String nip) async {
    try {
      Response res = await _repository!.dio.get(
          '${ApiUrl.serviceUrl}/hris/pangkat/Riwayat/GetPangkatByNip/$nip');
      print('${ApiUrl.serviceUrl}/hris/pangkat/Riwayat/GetPangkatByNip/$nip');
      log(jsonEncode(res.data));
      return List<Pangkat>.from(
          res.data['Data'].map((i) => Pangkat.fromJson(i)));
    } on DioError catch (e) {
      print("erir $e");
      return null;
    }
  }

  Future<List<Jabatan>?> getRiwayatJabatan() async {
    try {
      Response res = await _repository!.dio.get(
          '${ApiUrl.serviceUrl}/hris/jabatan/Riwayat/GetJabatanByIdPegawai');
      log(jsonEncode(res.data));
      return List<Jabatan>.from(
          res.data['Data'].map((i) => Jabatan.fromJson(i)));
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }

  Future<List<Diklat>?> getRiwayatDiklat(String nip) async {
    try {
      Response res = await _repository!.dio
          .get('${ApiUrl.serviceUrl}/hris/diklat/Riwayat/GetByNip/$nip');
      log(jsonEncode(res.data));
      return List<Diklat>.from(res.data['Data'].map((i) => Diklat.fromJson(i)));
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }
}
