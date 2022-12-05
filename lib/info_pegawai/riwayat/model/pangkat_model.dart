class Pangkat {
  int? idpegawaiPangkat;
  int? idpegawai;
  int? idrefPangkat;
  String? tanggalMulai;
  String? tanggalSelesai;
  int? masaKerjaTahun;
  int? masaKerjaBulan;
  String? noSk;
  String? tanggalSk;
  String? penerbitSk;
  String? noNotaBkn;
  String? tanggalNotaBkn;
  int? idrefValiditas;
  String? lampiran;
  String? createdDate;
  String? aktif;
  int? createdBy;
  String? idlama;
  String? pangkat;
  String? golongan;
  String? organisasi;
  String? esl1;
  String? uraianStatusValiditas;
  String? hrRefPangkat;
  int? idrefValiditasNavigation;

  Pangkat(
      {required this.idpegawaiPangkat,
      required this.idpegawai,
      required this.idrefPangkat,
      required this.tanggalMulai,
      required this.tanggalSelesai,
      required this.masaKerjaTahun,
      required this.masaKerjaBulan,
      required this.noSk,
      required this.tanggalSk,
      required this.penerbitSk,
      required this.noNotaBkn,
      required this.tanggalNotaBkn,
      required this.idrefValiditas,
      required this.lampiran,
      required this.createdDate,
      required this.aktif,
      required this.createdBy,
      required this.idlama,
      required this.pangkat,
      required this.golongan,
      required this.organisasi,
      required this.esl1,
      required this.uraianStatusValiditas,
      required this.hrRefPangkat,
      required this.idrefValiditasNavigation});

  Pangkat.fromJson(Map<String, dynamic> json) {
    idpegawaiPangkat =
        json['IdpegawaiPangkat'] == null ? null : json['IdpegawaiPangkat'];
    idpegawai = json['Idpegawai'] == null ? null : json['Idpegawai'];
    idrefPangkat = json['IdrefPangkat'] == null ? null : json['IdrefPangkat'];
    tanggalMulai = json['TanggalMulai'] == null ? null : json['TanggalMulai'];
    tanggalSelesai =
        json['TanggalSelesai'] == null ? null : json['TanggalSelesai'];
    masaKerjaTahun =
        json['MasaKerjaTahun'] == null ? null : json['MasaKerjaTahun'];
    masaKerjaBulan =
        json['MasaKerjaBulan'] == null ? null : json['MasaKerjaBulan'];
    noSk = json['NoSk'] == null ? null : json['NoSk'];
    tanggalSk = json['TanggalSk'] == null ? null : json['TanggalSk'];
    penerbitSk = json['PenerbitSk'] == null ? null : json['PenerbitSk'];
    noNotaBkn = json['NoNotaBkn'] == null ? null : json['NoNotaBkn'];
    tanggalNotaBkn =
        json['TanggalNotaBkn'] == null ? null : json['TanggalNotaBkn'];
    idrefValiditas =
        json['IdrefValiditas'] == null ? null : json['IdrefValiditas'];
    lampiran = json['Lampiran'] == null ? null : json['Lampiran'];
    createdDate = json['CreatedDate'] == null ? null : json['CreatedDate'];
    aktif = json['Aktif'] == null ? null : json['Aktif'];
    createdBy = json['CreatedBy'] == null ? null : json['CreatedBy'];
    idlama = json['Idlama'] == null ? null : json['Idlama'];
    pangkat = json['Pangkat'] == null ? null : json['Pangkat'];
    golongan = json['Golongan'] == null ? null : json['Golongan'];
    organisasi = json['Organisasi'] == null ? null : json['Organisasi'];
    esl1 = json['Esl1'] == null ? null : json['Esl1'];
    uraianStatusValiditas = json['UraianStatusValiditas'] == null
        ? null
        : json['UraianStatusValiditas'];
    hrRefPangkat = json['HrRefPangkat'] == null ? null : json['HrRefPangkat'];
    idrefValiditasNavigation = json['IdrefValiditasNavigation'] == null
        ? null
        : json['IdrefValiditasNavigation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IdpegawaiPangkat'] = this.idpegawaiPangkat;
    data['Idpegawai'] = this.idpegawai;
    data['IdrefPangkat'] = this.idrefPangkat;
    data['TanggalMulai'] = this.tanggalMulai;
    data['TanggalSelesai'] = this.tanggalSelesai;
    data['MasaKerjaTahun'] = this.masaKerjaTahun;
    data['MasaKerjaBulan'] = this.masaKerjaBulan;
    data['NoSk'] = this.noSk;
    data['TanggalSk'] = this.tanggalSk;
    data['PenerbitSk'] = this.penerbitSk;
    data['NoNotaBkn'] = this.noNotaBkn;
    data['TanggalNotaBkn'] = this.tanggalNotaBkn;
    data['IdrefValiditas'] = this.idrefValiditas;
    data['Lampiran'] = this.lampiran;
    data['CreatedDate'] = this.createdDate;
    data['Aktif'] = this.aktif;
    data['CreatedBy'] = this.createdBy;
    data['Idlama'] = this.idlama;
    data['Pangkat'] = this.pangkat;
    data['Golongan'] = this.golongan;
    data['Organisasi'] = this.organisasi;
    data['Esl1'] = this.esl1;
    data['UraianStatusValiditas'] = this.uraianStatusValiditas;
    data['HrRefPangkat'] = this.hrRefPangkat;
    data['IdrefValiditasNavigation'] = this.idrefValiditasNavigation;
    return data;
  }
}
