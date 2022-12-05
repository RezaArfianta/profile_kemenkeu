import 'package:profilekemenkeu/app/repository/ekemenkeu_repository.dart';
import 'package:profilekemenkeu/global/ekemenkeu_storage.dart';
import 'package:profilekemenkeu/info_pegawai/data_pokok/model/data_pokok_model.dart';
import 'package:profilekemenkeu/info_pegawai/data_pokok/model/data_pokok_repository.dart';
import 'package:profilekemenkeu/info_pegawai/riwayat/model/diklat_model.dart';
import 'package:profilekemenkeu/info_pegawai/riwayat/model/jabatan_model.dart';
import 'package:profilekemenkeu/info_pegawai/riwayat/model/pangkat_model.dart';
import 'package:profilekemenkeu/info_pegawai/riwayat/model/riwayat_repository.dart';
import 'package:get/get.dart';

class RiwayatDiklatController extends GetxController {
  var listDiklat = <Diklat>[].obs;
  var isLoading = false.obs;
  var repo = RiwayatRepository(EKemenkeuRepository());

  var nipPegawai = EKemenkeuStorage.local!.getString("nip-pegawai") as String;

  void fetch() async {
    // var sr = await
    isLoading.value = true;
    listDiklat.value = (await repo.getRiwayatDiklat(nipPegawai))!;
    isLoading.value = false;

    // (await repo
    //     .getRiwayatDiklat(EKemenkeuStorage.local!.getString("nip-pegawai")))!;
  }

  @override
  void onInit() {
    super.onInit();
    fetch();
  }
}
