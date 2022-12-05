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
      {this.idpegawaiJabatan,
      this.idpegawai,
      this.idjabatan,
      this.idjabatanAtasan,
      this.tanggalMulai,
      this.tanggalSelesai,
      this.noSk,
      this.tanggalSk,
      this.idrefStatusJabatan,
      this.tanggalPelantikan,
      this.lampiran,
      this.idrefValiditas,
      this.createdDate,
      this.aktif,
      this.createdBy,
      this.idrefStatusData,
      this.idlama,
      this.jenisJabatan,
      this.jabatan,
      this.unit,
      this.statusJabatan,
      this.jabatanAtasan,
      this.organisasi,
      this.kodeOrganisasi,
      this.uraianStatusValiditas,
      this.esl1,
      this.idjabatanAtasanNavigation,
      this.idjabatanNavigation,
      this.idlamaNavigation,
      this.idrefStatusJabatanNavigation,
      this.idrefValiditasNavigation});

  Jabatan.fromJson(Map<String, dynamic> json) {
    idpegawaiJabatan = json['IdpegawaiJabatan'];
    idpegawai = json['Idpegawai'];
    idjabatan = json['Idjabatan'];
    idjabatanAtasan = json['IdjabatanAtasan'];
    tanggalMulai = json['TanggalMulai'];
    tanggalSelesai = json['TanggalSelesai'];
    noSk = json['NoSk'];
    tanggalSk = json['TanggalSk'];
    idrefStatusJabatan = json['IdrefStatusJabatan'];
    tanggalPelantikan = json['TanggalPelantikan'];
    lampiran = json['Lampiran'];
    idrefValiditas = json['IdrefValiditas'];
    createdDate = json['CreatedDate'];
    aktif = json['Aktif'];
    createdBy = json['CreatedBy'];
    idrefStatusData = json['IdrefStatusData'];
    idlama = json['Idlama'];
    jenisJabatan = json['JenisJabatan'];
    jabatan = json['Jabatan'];
    unit = json['Unit'];
    statusJabatan = json['StatusJabatan'];
    jabatanAtasan = json['JabatanAtasan'];
    organisasi = json['Organisasi'];
    kodeOrganisasi = json['KodeOrganisasi'];
    uraianStatusValiditas = json['UraianStatusValiditas'];
    esl1 = json['Esl1'];
    idjabatanAtasanNavigation = json['IdjabatanAtasanNavigation'];
    idjabatanNavigation = json['IdjabatanNavigation'];
    idlamaNavigation = json['IdlamaNavigation'];
    idrefStatusJabatanNavigation = json['IdrefStatusJabatanNavigation'];
    idrefValiditasNavigation = json['IdrefValiditasNavigation'];
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
