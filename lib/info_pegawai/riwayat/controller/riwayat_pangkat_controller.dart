import 'package:profilekemenkeu/app/repository/ekemenkeu_repository.dart';
import 'package:profilekemenkeu/global/constant.dart';
import 'package:profilekemenkeu/global/ekemenkeu_storage.dart';
// import 'package:profilekemenkeu/auth/bloc/auth_bloc.dart';
import 'package:profilekemenkeu/info_pegawai/data_pokok/model/data_pokok_model.dart';
import 'package:profilekemenkeu/info_pegawai/data_pokok/model/data_pokok_repository.dart';
import 'package:profilekemenkeu/info_pegawai/riwayat/model/pangkat_model.dart';
import 'package:profilekemenkeu/info_pegawai/riwayat/model/riwayat_repository.dart';
import 'package:get/get.dart';

class RiwayatPangkatController extends GetxController {
  var listPangkat = <Pangkat>[].obs;
  var isLoading = false.obs;
  var repo = RiwayatRepository();
  var isError = false.obs;

  // String nipPegawai = "198507132010122001";

  void fetch() async {
    // var sr = await
    isError.value = false;
    isLoading.value = true;
    try {
      listPangkat.value = (await repo.getRiwayatPangkat(Constant.nipPegawai))!;
      if (listPangkat.value == null) {
        isError.value = true;
      }
    } on Error catch (e) {
      isError.value = true;
    }
    isLoading.value = false;
  }

  @override
  void onInit() {
    super.onInit();
    fetch();
  }
}
