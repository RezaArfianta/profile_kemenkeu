import 'package:ekemenkeu/app/repository/ekemenkeu_repository.dart';
import 'package:ekemenkeu/global/ekemenkeu_storage.dart';
import 'package:ekemenkeu/module/info_pegawai/data_pokok/model/data_pokok_model.dart';
import 'package:ekemenkeu/module/info_pegawai/data_pokok/model/data_pokok_repository.dart';
import 'package:ekemenkeu/module/info_pegawai/riwayat/model/diklat_model.dart';
import 'package:ekemenkeu/module/info_pegawai/riwayat/model/jabatan_model.dart';
import 'package:ekemenkeu/module/info_pegawai/riwayat/model/pangkat_model.dart';
import 'package:ekemenkeu/module/info_pegawai/riwayat/model/riwayat_repository.dart';
import 'package:get/get.dart';

class RiwayatDiklatController extends GetxController{
  var listDiklat = List<Diklat>().obs;
  var isLoading = false.obs;
  var repo = RiwayatRepository(EKemenkeuRepository());

  void fetch() async {
    // var sr = await
    isLoading.value = true;
    listDiklat.value = await repo.getRiwayatDiklat(EKemenkeuStorage.local.getString("nip-pegawai"));
    isLoading.value = false;
  }

  @override
  void onInit() {
    super.onInit();
    fetch();
  }

}

