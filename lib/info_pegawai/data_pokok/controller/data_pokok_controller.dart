import 'package:get/get.dart';
import 'package:profilekemenkeu/info_pegawai/data_pokok/screen/data_pokok_page.dart';

import '../../../app/repository/ekemenkeu_repository.dart';
import '../model/data_pokok_model.dart';
import '../model/data_pokok_repository.dart';

class DataPokokController extends GetxController {
  var dataPokok = <DataPokok>[].obs;
  var isLoading = false.obs;
  var isError = false.obs;
  var repo = DataPokokRepository(EKemenkeuRepository());

  Future<void> fetch() async {
    // var sr = await

    isLoading.value = true;
    try {
      dataPokok.value = await repo.getDataPokok();
      isError.value = false;
    } catch (error) {
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
