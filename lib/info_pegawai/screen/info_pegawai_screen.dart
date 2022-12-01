import 'package:ekemenkeu/app/repository/ekemenkeu_repository.dart';
import 'package:ekemenkeu/module/info_pegawai/bloc/info_pegawai_bloc.dart';
import 'package:ekemenkeu/module/info_pegawai/screen/info_pegawai_repository.dart';
import 'package:ekemenkeu/module/nadine/list_surat/presentation/widgets/search_bar.dart';
import 'package:ekemenkeu/view/partial/loading_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InfoPegawaiScreen extends StatefulWidget {
  @override
  _InfoPegawaiScreenState createState() => _InfoPegawaiScreenState();
}

class _InfoPegawaiScreenState extends State<InfoPegawaiScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Pencarian Pegawai"),
              Tab(text: "Pencarian Organisasi")
            ],
          ),
          title: Text('Info Pegawai'),
        ),
        body: TabBarView(
          children: [_CariPegawai(), _CariOrganisasi()],
        ),
      ),
    );
  }
}

class _CariPegawai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InfoPegawaiBloc(
          repository: InfoPegRepository(EKemenkeuRepository()),
          kdOrg: "35",
          key: "sholeh",
          limit: "0"),
      child: BlocBuilder<InfoPegawaiBloc, InfoPegawaiState>(
        builder: (BuildContext context, state) {
          if (state is InfoPegawaiInitial) {
            BlocProvider.of<InfoPegawaiBloc>(context).add(InfoLoadPegawai());
          }
          if (state is InfoPegawaiLoading) {
            return Loading();
          }
          if (state is InfoPegawaiSuccess) {
            //return RefreshIndicator(child: Column(children: [SearchBar()]), onRefresh: null);
            return Text("OK");
          } else {
            return Text("Data tidak dapat diakses");
          }
        },
      ),
    );
  }
}

class _CariOrganisasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InfoOrganisasiBloc(
          repository: InfoPegRepository(EKemenkeuRepository()), key: "sholeh"),
      child: BlocBuilder<InfoOrganisasiBloc, InfoPegawaiState>(
        builder: (BuildContext context, state) {
          if (state is InfoOrganisasiInitial) {
            BlocProvider.of<InfoOrganisasiBloc>(context)
                .add(InfoLoadOrganisasi());
          }
          if (state is InfoOrganisasiLoading) {
            return Loading();
          }
          if (state is InfoOrganisasiSuccess) {
            //return RefreshIndicator(child: Column(children: [SearchBar()]), onRefresh: null);
            return Text("OK");
          } else {
            return Text("Data tidak dapat diakses");
          }
        },
      ),
    );
  }
}
