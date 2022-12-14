import 'package:profilekemenkeu/app/repository/ekemenkeu_repository.dart';
import 'package:profilekemenkeu/info_pegawai/data_pokok/model/data_pokok_model.dart';
import 'package:profilekemenkeu/info_pegawai/data_pokok/model/data_pokok_repository.dart';
import 'package:profilekemenkeu/info_pegawai/riwayat/model/jabatan_model.dart';
import 'package:profilekemenkeu/info_pegawai/riwayat/model/pangkat_model.dart';
import 'package:profilekemenkeu/info_pegawai/riwayat/model/riwayat_repository.dart';
import 'package:get/get.dart';

class RiwayatJabatanController extends GetxController {
  var listPangkat = <Jabatan>[].obs;
  var isLoading = false.obs;
  var repo = RiwayatRepository();

  @override
  void onInit() {
    super.onInit();
    fetch();
  }

  void fetch() async {
    // var sr = await
    try {
      print("HOHOHO");
      isLoading.value = true;
      listPangkat.value = (await repo.getRiwayatJabatan())!;
      print(listPangkat.value);
      isLoading.value = false;
    } catch (e) {
      print("${e} ELOLROLRL");
    }
  }
}
