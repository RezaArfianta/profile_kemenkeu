import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ekemenkeu/module/info_pegawai/cari_pegawai/controller/cari_pegawai_controller.dart';
import 'package:ekemenkeu/view/partial/ekemenkeu_card.dart';
import 'package:ekemenkeu/view/partial/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CariPegawaiPage extends StatelessWidget {

  const CariPegawaiPage();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Theme.of(context).textTheme.bodyMedium.color,

            onTap: (index) {
              // Tab index when user select it, it start from zero
            },
            tabs: [
            //   Material(child:
              Tab(text: ("Cari Pegawai")
              // )
            ),

              // Material(child:
              Tab(text: ("Cari Organisasi"))
              // ),

            ],
          ),
          title: Text('Cari Pegawai'),
        ),
        body: TabBarView(
          children: [
            new _cariPegawaiBody(),
            new _cariOrgBody(),
          ],
        ),
      ),
    );
  }



}

class _cariPegawaiBody extends GetView<CariPegawaiController> {

  @override
  Widget build(BuildContext context) {
    Get.put(CariPegawaiController("peg"), tag: "peg");
    // CariPegawaiController controller = Get.find(tag: "peg");
    // Get.create(()=>(CariPegawaiController("peg")));

    CariPegawaiController controller = Get.find(tag: "peg");
    // CariPegawaiController controller = Get.find<CariPegawaiController>();
    // Get.create(() => CariPegawaiController("peg"));
    return Container(
      child: Column(

        children: [
          TextField(
            textInputAction: TextInputAction.search,
            onSubmitted: (value) {
              controller.fetch(value);
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
              hintText: 'Cari ',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: TextField(
          //     // controller: tc,
          //     decoration: InputDecoration(hintText: 'Search... '),
          //     onSubmitted: (x) => {
          //       controller.fetch(x)
          //     },
          //   ),
          // ),
          Obx(() {
            if(controller.isLoading.value == true){
              return Expanded(
                child: Container(
                  child: Center(
                      child: Loading()
                  ),
                ),
              );
            }else{
              if(controller.isSearched.value && controller.searchResultPegawai.length == 0){
                return Expanded(
                  child: Container(
                    child: Center(
                        child: Text("Pencarian tidak ditemukan.")
                    ),
                  ),
                );
              }else{
                return Expanded(
                  child: ListView.builder(
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    // physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.searchResultPegawai.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return EKemenkeuCard(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Theme(
                            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(

                              leading: ClipOval(
                                child: CachedNetworkImage(
                                  imageUrl: "${controller.searchResultPegawai[index].photo}",
                                  height: 50, width: 50,
                                  fit: BoxFit.cover,
                                  errorWidget: (context, url, error) => Container(color: Colors.grey.shade100,),
                                ),
                              ),
                              title: AutoSizeText("${controller.searchResultPegawai[index].nama}".trim(), overflow: TextOverflow.ellipsis,),
                              subtitle: AutoSizeText("${controller.searchResultPegawai[index].nip18}".trim(), overflow: TextOverflow.ellipsis,),
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Pangkat/Golongan :"),
                                          Spacer(flex: 1,),
                                          Expanded(
                                              flex: 3,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: [
                                                  AutoSizeText("${controller.searchResultPegawai[index].kodeGolonganRuang}"),
                                                ],
                                              )
                                          )
                                        ]
                                    ),
                                    Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text("Jabatan :"),
                                          Spacer(flex: 1,),
                                          Expanded(
                                            flex: 3,
                                            child:
                                            AutoSizeText("${controller.searchResultPegawai[index].jabatan}", textAlign: TextAlign.end,),
                                          )


                                        ]

                                    ),
                                    Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text("Unit :"),
                                          Spacer(flex: 1,),
                                          Expanded(
                                            flex: 3,
                                            child:
                                            AutoSizeText("${controller.searchResultPegawai[index].organisasi}", textAlign: TextAlign.end,),
                                          )


                                        ]

                                    ),
                                  ],
                                )

                              ],
                              expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
                              tilePadding: EdgeInsets.zero,

                            ),
                          ),
                        ),
                      );
                    },
                  ),

                );
              }
            }

          }
          ),
        ],
      ),
    );
  }
}

class _cariOrgBody extends GetView<CariPegawaiController> {

  @override
  Widget build(BuildContext context) {
    Get.put(CariPegawaiController("org"), tag: "org");
    // Get.create(()=>(CariPegawaiController("org")));

    CariPegawaiController controller = Get.find(tag: "org");
    // CariPegawaiController controller = Get.find<CariPegawaiController>();
    // Get.create(() => CariPegawaiController("org"));
    TextEditingController tc = TextEditingController();
    return Container(
      child: Column(

        children: [
          TextField(
            controller: tc,
            autocorrect: false,
            textInputAction: TextInputAction.search,
            onSubmitted: (value) {
              controller.fetch(value);
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
              hintText: 'Cari ',
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            ),
          ),
          Obx(() {
            if(controller.isLoading.value == true){
              return Expanded(
                child: Container(
                  child: Center(
                      child: Loading()
                  ),
                ),
              );
            }else{
              if(controller.isSearched.value && controller.searchResultOrg.length == 0){
                return Expanded(
                  child: Container(
                    child: Center(
                        child: Text("Pencarian tidak ditemukan.")
                    ),
                  ),
                );
              }else{
                return Expanded(
                  child: ListView.builder(
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    // physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.searchResultOrg.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return EKemenkeuCard(
                        child: Container(

                          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Theme(

                            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                              title: Text("${controller.searchResultOrg[index].namaOrganisasi}"),
                              subtitle: Text("${controller.searchResultOrg[index].namaPejabat}"),
                              children: [
                                Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("Uraian :"),
                                      Spacer(flex: 1,),
                                      Expanded(
                                        flex: 3,
                                        child:
                                        AutoSizeText("${controller.searchResultOrg[index].uraianLengkap}", textAlign: TextAlign.end,),
                                      )
                                    ]
                                ),
                                Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("Alamat :"),
                                      Spacer(flex: 1,),
                                      Expanded(
                                        flex: 3,
                                        child:
                                        AutoSizeText("${controller.searchResultOrg[index].alamat}", textAlign: TextAlign.end,),
                                      )
                                    ]
                                ),
                              ],

                              expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
                              tilePadding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              }

            }

          }
          ),
        ],
      ),
    );
  }
}