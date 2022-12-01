import 'package:ekemenkeu/app/repository/ekemenkeu_repository.dart';
import 'package:ekemenkeu/module/info_pegawai/data_pokok/model/data_pokok_model.dart';
import 'package:ekemenkeu/module/info_pegawai/data_pokok/model/data_pokok_repository.dart';
import 'package:get/get.dart';

class DataPokokController extends GetxController{
  var dataPokok = DataPokok().obs;
  var isLoading = false.obs;
  var isError = false.obs;
  var repo = DataPokokRepository(EKemenkeuRepository());

  void fetch() async {
    // var sr = await

    isLoading.value = true;
    try{
      dataPokok.value = await repo.getDataPokok();
      isError.value = false;
    }catch (error){
      isError.value = true;
    }
    isLoading.value = false;
  }

  @override
  void onInit() {
    super.onInit();
    fetch();
  }

  @override
  void onClose() {
    super.onClose();
  }

}

