import 'package:ekemenkeu/app/repository/ekemenkeu_repository.dart';
import 'package:ekemenkeu/module/info_pegawai/screen/info_pegawai_repository.dart';
import 'package:ekemenkeu/module/info_pegawai/screen/pegawai_model.dart';
import 'package:get/get.dart';

class CariPegawaiController extends GetxController{
  var searchResultPegawai = List<Pegawai>().obs;
  var searchResultOrg = List<Organisasi>().obs;
  var isLoading = false.obs;
  var isSearched= false.obs;
  var repo = InfoPegRepository(EKemenkeuRepository());
  final mode;

  CariPegawaiController(this.mode);

  void fetch(String key) async {
    // var sr = await

    isSearched.value = true;
    isLoading.value = true;
    if(this.mode == "peg"){
      searchResultPegawai.value = await repo.getInfoPegawai(key, 0, "35");
    }else{
      searchResultOrg.value = await repo.getOrganisasi(key);

    }
    isLoading.value = false;
  }

  @override
  void onInit() {
    print(isSearched);
  }

  @override
  void onClose() {
    super.onClose();
  }



}

