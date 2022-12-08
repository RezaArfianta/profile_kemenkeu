import 'package:get/get.dart';
import 'package:profilekemenkeu/global/ekemenkeu_storage.dart';
import 'package:profilekemenkeu/info_pegawai/data_pokok/screen/data_pokok_page.dart';

import '../../../app/repository/ekemenkeu_repository.dart';
import '../model/data_pokok_model.dart';
import '../model/data_pokok_repository.dart';

class DataPokokController extends GetxController {
  var dataPokok = <DataPokok>[].obs;
  var isLoading = false.obs;
  var isError = false.obs;
  var repo = DataPokokRepository(EKemenkeuRepository());
  var data = EKemenkeuStorage.local!.getString('data') as String;

 void fetch() async {
    // var sr = await

    isLoading.value = true;
    try {
      dataPokok.value = (await repo.getDataPokok(data))!;
      if (dataPokok.value == null) {
        isError.value = true;
      }
      
  }on Error catch (e) {
        isError.value = true;
      }
      isLoading.value = false;

  @override
  void onInit() {
    super.onInit();
    fetch();
  }

  @override
  void onClose() {
    super.onClose();
  }
 }}