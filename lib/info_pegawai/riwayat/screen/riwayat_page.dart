import 'package:auto_size_text/auto_size_text.dart';
import 'package:profilekemenkeu/info_pegawai/riwayat/controller/riwayat_diklat_controller.dart';
import 'package:profilekemenkeu/info_pegawai/riwayat/controller/riwayat_jabatan_controller.dart';
import 'package:profilekemenkeu/info_pegawai/riwayat/controller/riwayat_pangkat_controller.dart';
import 'package:profilekemenkeu/view/partial/ekemenkeu_card.dart';
import 'package:profilekemenkeu/view/partial/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

class RiwayatPage extends StatelessWidget {
  const RiwayatPage();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Theme.of(context).textTheme.bodyMedium!.color,
            onTap: (index) {
              // Tab index when user select it, it start from zero
            },
            tabs: [
              Tab(text: ("Pangkat")),
              Tab(text: ("Jabatan")),
              Tab(text: ("Diklat")),
            ],
          ),
          title: Text('Riwayat'),
        ),
        body: TabBarView(
          children: [
            new RiwayatPangkatBody(),
            new RiwayatJabatanBody(),
            new RiwayatDiklatBody()
          ],
        ),
      ),
    );
  }
}

class RiwayatPangkatBody extends GetView<RiwayatPangkatController> {
  @override
  Widget build(BuildContext context) {
    Get.create(() => (RiwayatPangkatController()));
    RiwayatPangkatController controller = Get.find<RiwayatPangkatController>();
    // Get.put(RiwayatPangkatController(), tag: "riwayatPangkat");
    // RiwayatPangkatController controller = Get.find(tag: "riwayatPangkat");
    return Container(child: Obx(() {
      if (controller.isError.value) {
        return Expanded(
          child: Container(
              padding: EdgeInsets.all(20),
              child: Center(
                  child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Terjadi kesalahan, jika kesalahan terus terjadi coba lagi setelah login ulang.",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.fetch();
                    },
                    child: Icon(Icons.refresh),
                  )
                ],
              ))),
        );
      } else if (controller.isLoading.value) {
        return Container(
          child: Center(child: Loading()),
        );
      } else {
        return RefreshIndicator(
          child: ListView.builder(
              itemCount: controller.listPangkat.value.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return EKemenkeuCard(
                    child: Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    childrenPadding: EdgeInsets.fromLTRB(15, 0, 16, 0),
                    title: Text(
                        "${controller.listPangkat[index].pangkat} ${controller.listPangkat[index].golongan}"),
                    subtitle: Row(children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: Text(
                                "${controller.listPangkat[index].idrefValiditas == 4 ? "DISETUJUI (UPK)" : controller.listPangkat[index].idrefValiditas == 3 ? "DISETUJUI(Pusat)" : controller.listPangkat[index].idrefValiditas == 2 ? "DISETUJUI(Atasan)" : "PROSES"}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1),
                            color:
                                controller.listPangkat[index].idrefValiditas ==
                                        4
                                    ? Colors.green
                                    : controller.listPangkat[index]
                                                .idrefValiditas ==
                                            3
                                        ? Colors.green
                                        : controller.listPangkat[index]
                                                    .idrefValiditas ==
                                                2
                                            ? Colors.green
                                            : Colors.orangeAccent,
                          )),
                      Spacer()
                    ]),
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("No. SK:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${controller.listPangkat[index].noSk}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Penerbit SK:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${controller.listPangkat[index].penerbitSk}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Tanggal SK:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${Jiffy(controller.listPangkat[index].tanggalSk).yMMMMd}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Tanggal Mulai:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${Jiffy(controller.listPangkat[index].tanggalMulai).yMMMMd}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Pangkat:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${controller.listPangkat[index].pangkat}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Masa Kerja:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${controller.listPangkat[index].masaKerjaTahun} Tahun ${controller.listPangkat[index].masaKerjaTahun} Bulan ",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("No. Persetujuan BKN:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${controller.listPangkat[index].noNotaBkn}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Tgl Persetujuan BKN:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${Jiffy(controller.listPangkat[index].tanggalNotaBkn).yMMMMd}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                    ],
                  ),
                ));
              }),
          onRefresh: () {
            controller.fetch();
          },
        );
      }
    }));
  }
}

class RiwayatJabatanBody extends GetView<RiwayatJabatanController> {
  @override
  Widget build(BuildContext context) {
    // Get.put(RiwayatJabatanController(), tag: "riwayatJabatan");
    // RiwayatJabatanController controller = Get.find(tag: "riwayatJabatan");
    Get.create(() => (RiwayatJabatanController()));
    RiwayatJabatanController controller = Get.find<RiwayatJabatanController>();
    return Container(child: Obx(() {
      if (controller.isLoading.value) {
        return Expanded(
          child: Container(
            child: Center(child: Loading()),
          ),
        );
      } else {
        return RefreshIndicator(
          child: ListView.builder(
              itemCount: controller.listPangkat.value.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return EKemenkeuCard(
                    child: Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    childrenPadding: EdgeInsets.fromLTRB(15, 0, 16, 0),
                    title: Text("${controller.listPangkat[index].jabatan}"),
                    subtitle: Row(children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: Text(
                                "${controller.listPangkat[index].idrefValiditas == 4 ? "DISETUJUI (UPK)" : controller.listPangkat[index].idrefValiditas == 3 ? "DISETUJUI(Pusat)" : controller.listPangkat[index].idrefValiditas == 2 ? "DISETUJUI(Atasan)" : "PROSES"}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1),
                            color:
                                controller.listPangkat[index].idrefValiditas ==
                                        4
                                    ? Colors.green
                                    : controller.listPangkat[index]
                                                .idrefValiditas ==
                                            3
                                        ? Colors.green
                                        : controller.listPangkat[index]
                                                    .idrefValiditas ==
                                                2
                                            ? Colors.green
                                            : Colors.orangeAccent,
                          )),
                      Spacer()
                    ]),
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Unit Organisasi:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${controller.listPangkat[index].unit}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Jabatan:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${controller.listPangkat[index].jabatan}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Jabatan Atasan:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${controller.listPangkat[index].jabatanAtasan}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Status Jabatan:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${controller.listPangkat[index].statusJabatan}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Nomor SK:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${controller.listPangkat[index].noSk}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Tanggal SK:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${Jiffy(controller.listPangkat[index].tanggalSk).yMMMMd}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Tanggal Pelantikan:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${controller.listPangkat[index].tanggalPelantikan == null ? '-' : controller.listPangkat[index].tanggalPelantikan}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("TMT:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${Jiffy(controller.listPangkat[index].tanggalMulai).yMMMMd}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                    ],
                  ),
                ));
              }),
          onRefresh: () {
            controller.fetch();
          },
        );
      }
    }));
  }
}

class RiwayatDiklatBody extends GetView<RiwayatDiklatController> {
  @override
  Widget build(BuildContext context) {
    // Get.put(RiwayatDiklatController(), tag: "riwayatDiklat");
    // RiwayatDiklatController controller = Get.find(tag: "riwayatDiklat");
    Get.create(() => (RiwayatDiklatController()));
    RiwayatDiklatController controller = Get.find<RiwayatDiklatController>();
    return Container(child: Obx(() {
      if (controller.isLoading.value) {
        return Expanded(
          child: Container(
            child: Center(child: Loading()),
          ),
        );
      } else {
        return RefreshIndicator(
          child: ListView.builder(
              itemCount: controller.listDiklat.value.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return EKemenkeuCard(
                    child: Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    childrenPadding: EdgeInsets.fromLTRB(15, 0, 16, 0),
                    title: Text("${controller.listDiklat[index].namaDiklat}"),
                    subtitle: Row(children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: Text(
                                "${controller.listDiklat[index].idrefValiditas == 4 ? "DISETUJUI (UPK)" : controller.listDiklat[index].idrefValiditas == 3 ? "DISETUJUI(Pusat)" : controller.listDiklat[index].idrefValiditas == 2 ? "DISETUJUI(Atasan)" : "PROSES"}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1),
                            color:
                                controller.listDiklat[index].idrefValiditas == 4
                                    ? Colors.green
                                    : controller.listDiklat[index]
                                                .idrefValiditas ==
                                            3
                                        ? Colors.green
                                        : controller.listDiklat[index]
                                                    .idrefValiditas ==
                                                2
                                            ? Colors.green
                                            : Colors.orangeAccent,
                          )),
                      Spacer()
                    ]),
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Jenis Diklat:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${controller.listDiklat[index].idrefJenisDiklat ?? '-'}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Tanggal Diklat:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${controller.listDiklat[index].tanggalDiklat != null ? Jiffy(controller.listDiklat[index].tanggalDiklat).yMMMMd : '-'}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Nama Diklat:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${controller.listDiklat[index].namaDiklat}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("No. Sertifikat:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${controller.listDiklat[index].noSertifikat ?? '-'}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Tanggal Sertifikat:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${controller.listDiklat[index].tanggalSertifikat != null ? Jiffy(controller.listDiklat[index].tanggalSertifikat).yMMMMd : '-'}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Instansi Penyelenggara:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${controller.listDiklat[index].institusiPenyelenggara ?? '-'}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Nama Instansi:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${controller.listDiklat[index].namaInstansi ?? '-'}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Jumlah Jam:"),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: AutoSizeText(
                                "${controller.listDiklat[index].jamlat ?? '-'}",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ]),
                    ],
                  ),
                ));
              }),
          onRefresh: () async {
            controller.fetch();
          },
        );
      }
    }));
  }
}
