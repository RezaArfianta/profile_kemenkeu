import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:profilekemenkeu/info_pegawai/screen/info_pegawai_repository.dart';
import 'package:profilekemenkeu/info_pegawai/screen/pegawai_model.dart';
import 'package:flutter/cupertino.dart';

part 'info_pegawai_event.dart';
part 'info_pegawai_state.dart';

class InfoPegawaiBloc extends Bloc<InfoPegawaiEvent, InfoPegawaiState> {
  final InfoPegRepository repository;
  final String key;
  final String limit;
  final String kdOrg;
  InfoPegawaiBloc(
      {required this.key,
      required this.limit,
      required this.kdOrg,
      required this.repository})
      : super(InfoPegawaiInitial());

  @override
  Stream<InfoPegawaiState> mapEventToState(
    InfoPegawaiEvent event,
  ) async* {
    if (event is InfoLoadPegawai) {
      yield InfoPegawaiLoading();
      List<Pegawai>? pegawai =
          await repository.getInfoPegawai(key, limit, kdOrg);
      yield InfoPegawaiSuccess(pegawai: pegawai!);
    }
  }
}

class InfoOrganisasiBloc extends Bloc<InfoPegawaiEvent, InfoPegawaiState> {
  final InfoPegRepository repository;
  final String key;
  InfoOrganisasiBloc({required this.repository, required this.key})
      : super(InfoOrganisasiInitial());

  @override
  Stream<InfoPegawaiState> mapEventToState(InfoPegawaiEvent event) async* {
    if (event is InfoLoadOrganisasi) {
      yield InfoOrganisasiLoading();
      // List<Organisasi> org = await repository.getOrganisasi(key);
      // yield InfoOrganisasiSuccess(organisasi: org);
    }
  }
}
