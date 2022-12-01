part of 'info_pegawai_bloc.dart';

@immutable
abstract class InfoPegawaiEvent {}

class InfoLoadPegawai extends InfoPegawaiEvent {}

class InfoLoadOrganisasi extends InfoPegawaiEvent {}
