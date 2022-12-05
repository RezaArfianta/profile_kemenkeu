part of 'info_pegawai_bloc.dart';

@immutable
abstract class InfoPegawaiState {}

class InfoPegawaiInitial extends InfoPegawaiState {}

class InfoPegawaiLoading extends InfoPegawaiState {}

class InfoPegawaiSuccess extends InfoPegawaiState {
  final List<Pegawai> pegawai;
  InfoPegawaiSuccess({required this.pegawai});
}

class InfoOrganisasiInitial extends InfoPegawaiState {}

class InfoOrganisasiLoading extends InfoPegawaiState {}

class InfoOrganisasiSuccess extends InfoPegawaiState {
  final List<Organisasi> organisasi;
  InfoOrganisasiSuccess({required this.organisasi});
}
