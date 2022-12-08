import 'package:profilekemenkeu/info_pegawai/data_pokok/controller/data_pokok_controller.dart';
import 'package:profilekemenkeu/view/partial/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

class DataPokokPage extends StatelessWidget {
  const DataPokokPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Pokok"),
      ),
      body: SafeArea(
          child: new _DataPokokBody(
              // color: Colors.red,
              )),
    );
  }
}

class _DataPokokBody extends GetView<DataPokokController> {
  @override
  Widget build(BuildContext context) {
    // Get.create(DataPokokController(), tag: "dtPokokCtrl");
    Get.create(() => (DataPokokController()));
    DataPokokController controller = Get.find<DataPokokController>();
    return Obx(() {
      if (controller.isError.value) {
        return Expanded(
          child: Container(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text("Terjadi kesalahan, harap coba lagi"),
                  SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.fetch();
                    },
                    child: Icon(Icons.refresh),
                  )
                ])),
          ),
        );
      } else if (controller.isLoading.value == true) {
        return Expanded(
          child: Container(
            child: Center(child: Loading()),
          ),
        );
      } else {
        return SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: ListView.builder(
              itemCount: controller.dataPokok.value.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    _kolomDatatPokok(
                        "NIP",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].nip18}"
                            : "-",
                        0),
                    _kolomDatatPokok(
                        "Nama",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].nama}"
                            : "-",
                        1),
                    _kolomDatatPokok(
                        "Tempat, Tanggal Lahir",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].tempatLahir}, ${Jiffy(controller.dataPokok[index].tanggalLahir).yMMMMd}"
                            : "-",
                        0),
                    _kolomDatatPokok(
                        "Jenis Kelamin",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].jenisKelamin}" ==
                                    "P"
                                ? "Pria"
                                : "Wanita"
                            : "-",
                        1),
                    _kolomDatatPokok(
                        "Agama",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].agama}"
                            : "-",
                        0),
                    _kolomDatatPokok(
                        "Golongan Darah",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].golonganDarah}"
                            : "-",
                        1),
                    _kolomDatatPokok(
                        "No. KK",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].noKk}"
                            : "-",
                        0),
                    _kolomDatatPokok(
                        "NIK",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].nik}"
                            : "-",
                        1),
                    _kolomDatatPokok(
                        "NPWP",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].npwp}"
                            : "-",
                        0),
                    _kolomDatatPokok(
                        "No. Telp",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].noHp}"
                            : "-",
                        1),
                    _kolomDatatPokok(
                        "Email",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].email}"
                            : "-",
                        0),
                    _kolomDatatPokok(
                        "Provinsi KTP",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].provinsiKtp}"
                            : "-",
                        1),
                    _kolomDatatPokok(
                        "Kota KTP",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].kotaKtp}"
                            : "-",
                        0),
                    _kolomDatatPokok(
                        "Alamat KTP",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].alamatKtp}"
                            : "-",
                        1),
                    _kolomDatatPokok(
                        "Kode Pos KTP",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].kodePosKtp}"
                            : "-",
                        0),
                    _kolomDatatPokok(
                        "Provinsi Tempat Tinggal",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].provinsiDomisili}"
                            : "-",
                        1),
                    _kolomDatatPokok(
                        "Kota Tempat Tinggal",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].kotaDomisili}"
                            : "-",
                        0),
                    _kolomDatatPokok(
                        "Alamat Tempat Tinggal",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].alamatDomisili}"
                            : "-",
                        1),
                    _kolomDatatPokok(
                        "Kode Pos Tempat Tinggal",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].kodePosDomisili}"
                            : "-",
                        0),
                    _kolomDatatPokok(
                        "Nama Kontak Darurat",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].namaKontakDarurat}"
                            : "-",
                        1),
                    _kolomDatatPokok(
                        "Nomor Kontak Darurat",
                        controller.dataPokok.value != null
                            ? "${controller.dataPokok[index].nomorKontakDarurat}"
                            : "-",
                        0),
                  ],
                );
              }),
        );
      }
    });
  }

  _kolomDatatPokok(String title, String isi, int index) {
    return Card(
      elevation: 0,
      child: Container(
          padding: EdgeInsets.all(8),
          // height: 50,
          // color: index.isEven ? Color.fromRGBO(241, 249, 253, 10) : Colors.white,
          child: Row(children: [
            Expanded(
              child: Text("$title :"),
              flex: 2,
            ),
            Spacer(
              flex: 1,
            ),
            Expanded(
              child: SelectableText(isi, textAlign: TextAlign.end),
              flex: 3,
            ),
          ])),
    );
  }
}
