class Jabatan {
  int? idpegawaiJabatan;
  int? idpegawai;
  int? idjabatan;
  int? idjabatanAtasan;
  String? tanggalMulai;
  String? tanggalSelesai;
  String? noSk;
  String? tanggalSk;
  int? idrefStatusJabatan;
  String? tanggalPelantikan;
  String? lampiran;
  int? idrefValiditas;
  String? createdDate;
  String? aktif;
  int? createdBy;
  int? idrefStatusData;
  int? idlama;
  String? jenisJabatan;
  String? jabatan;
  String? unit;
  String? statusJabatan;
  String? jabatanAtasan;
  String? organisasi;
  String? kodeOrganisasi;
  String? uraianStatusValiditas;
  String? esl1;
  int? idjabatanAtasanNavigation;
  int? idjabatanNavigation;
  int? idlamaNavigation;
  int? idrefStatusJabatanNavigation;
  int? idrefValiditasNavigation;

  Jabatan(
      {required this.idpegawaiJabatan,
      required this.idpegawai,
      required this.idjabatan,
      required this.idjabatanAtasan,
      required this.tanggalMulai,
      required this.tanggalSelesai,
      required this.noSk,
      required this.tanggalSk,
      required this.idrefStatusJabatan,
      required this.tanggalPelantikan,
      required this.lampiran,
      required this.idrefValiditas,
      required this.createdDate,
      required this.aktif,
      required this.createdBy,
      required this.idrefStatusData,
      required this.idlama,
      required this.jenisJabatan,
      required this.jabatan,
      required this.unit,
      required this.statusJabatan,
      required this.jabatanAtasan,
      required this.organisasi,
      required this.kodeOrganisasi,
      required this.uraianStatusValiditas,
      required this.esl1,
      required this.idjabatanAtasanNavigation,
      required this.idjabatanNavigation,
      required this.idlamaNavigation,
      required this.idrefStatusJabatanNavigation,
      required this.idrefValiditasNavigation});

  Jabatan.fromJson(Map<String, dynamic> json) {
    idpegawaiJabatan =
        json['IdpegawaiJabatan'] == null ? null : json['IdpegawaiJabatan'];
    idpegawai = json['Idpegawai'] == null ? null : json['Idpegawai'];
    idjabatan = json['Idjabatan'] == null ? null : json['Idjabatan'];
    idjabatanAtasan =
        json['IdjabatanAtasan'] == null ? null : json['IdjabatanAtasan'];
    tanggalMulai = json['TanggalMulai'] == null ? null : json['TanggalMulai'];
    tanggalSelesai =
        json['TanggalSelesai'] == null ? null : json['TanggalSelesai'];
    noSk = json['NoSk'] == null ? null : json['NoSk'];
    tanggalSk = json['TanggalSk'] == null ? null : json['TanggalSk'];
    idrefStatusJabatan =
        json['IdrefStatusJabatan'] == null ? null : json['IdrefStatusJabatan'];
    tanggalPelantikan =
        json['TanggalPelantikan'] == null ? null : json['TanggalPelantikan'];
    lampiran = json['Lampiran'] == null ? null : json['Lampiran'];
    idrefValiditas =
        json['IdrefValiditas'] == null ? null : json['IdrefValiditas'];
    createdDate = json['CreatedDate'] == null ? null : json['CreatedDate'];
    aktif = json['Aktif'] == null ? null : json['Aktif'];
    createdBy = json['CreatedBy'] == null ? null : json['CreatedBy'];
    idrefStatusData =
        json['IdrefStatusData'] == null ? null : json['IdrefStatusData'];
    idlama = json['Idlama'] == null ? null : json['Idlama'];
    jenisJabatan = json['JenisJabatan'] == null ? null : json['JenisJabatan'];
    jabatan = json['Jabatan'] == null ? null : json['Jabatan'];
    unit = json['Unit'] == null ? null : json['Unit'];
    statusJabatan =
        json['StatusJabatan'] == null ? null : json['StatusJabatan'];
    jabatanAtasan =
        json['JabatanAtasan'] == null ? null : json['JabatanAtasan'];
    organisasi = json['Organisasi'] == null ? null : json['Organisasi'];
    kodeOrganisasi =
        json['KodeOrganisasi'] == null ? null : json['KodeOrganisasi'];
    uraianStatusValiditas =
        json['UraianStatusValiditas'] == null ? null : json['IdpegawaiJabatan'];
    esl1 = json['Esl1'] == null ? null : json['Esl1'];
    idjabatanAtasanNavigation = json['IdjabatanAtasanNavigation'] == null
        ? null
        : json['IdjabatanAtasanNavigation'];
    idjabatanNavigation = json['IdjabatanNavigation'] == null
        ? null
        : json['IdjabatanNavigation'];
    idlamaNavigation =
        json['IdlamaNavigation'] == null ? null : json['IdlamaNavigation'];
    idrefStatusJabatanNavigation = json['IdrefStatusJabatanNavigation'] == null
        ? null
        : json['IdrefStatusJabatanNavigation'];
    idrefValiditasNavigation = json['IdrefValiditasNavigation'] == null
        ? null
        : json['IdrefValiditasNavigation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['IdpegawaiJabatan'] = this.idpegawaiJabatan;
    data['Idpegawai'] = this.idpegawai;
    data['Idjabatan'] = this.idjabatan;
    data['IdjabatanAtasan'] = this.idjabatanAtasan;
    data['TanggalMulai'] = this.tanggalMulai;
    data['TanggalSelesai'] = this.tanggalSelesai;
    data['NoSk'] = this.noSk;
    data['TanggalSk'] = this.tanggalSk;
    data['IdrefStatusJabatan'] = this.idrefStatusJabatan;
    data['TanggalPelantikan'] = this.tanggalPelantikan;
    data['Lampiran'] = this.lampiran;
    data['IdrefValiditas'] = this.idrefValiditas;
    data['CreatedDate'] = this.createdDate;
    data['Aktif'] = this.aktif;
    data['CreatedBy'] = this.createdBy;
    data['IdrefStatusData'] = this.idrefStatusData;
    data['Idlama'] = this.idlama;
    data['JenisJabatan'] = this.jenisJabatan;
    data['Jabatan'] = this.jabatan;
    data['Unit'] = this.unit;
    data['StatusJabatan'] = this.statusJabatan;
    data['JabatanAtasan'] = this.jabatanAtasan;
    data['Organisasi'] = this.organisasi;
    data['KodeOrganisasi'] = this.kodeOrganisasi;
    data['UraianStatusValiditas'] = this.uraianStatusValiditas;
    data['Esl1'] = this.esl1;
    data['IdjabatanAtasanNavigation'] = this.idjabatanAtasanNavigation;
    data['IdjabatanNavigation'] = this.idjabatanNavigation;
    data['IdlamaNavigation'] = this.idlamaNavigation;
    data['IdrefStatusJabatanNavigation'] = this.idrefStatusJabatanNavigation;
    data['IdrefValiditasNavigation'] = this.idrefValiditasNavigation;
    return data;
  }
}
