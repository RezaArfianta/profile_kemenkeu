class Pangkat {
  int idpegawaiPangkat;
  int idpegawai;
  int idrefPangkat;
  String tanggalMulai;
  String tanggalSelesai;
  int masaKerjaTahun;
  int masaKerjaBulan;
  String noSk;
  String tanggalSk;
  String penerbitSk;
  String noNotaBkn;
  String tanggalNotaBkn;
  int idrefValiditas;
  String lampiran;
  String createdDate;
  String aktif;
  int createdBy;
  String idlama;
  String pangkat;
  String golongan;
  String organisasi;
  String esl1;
  String uraianStatusValiditas;
  String hrRefPangkat;
  int idrefValiditasNavigation;

  Pangkat(
      {this.idpegawaiPangkat,
        this.idpegawai,
        this.idrefPangkat,
        this.tanggalMulai,
        this.tanggalSelesai,
        this.masaKerjaTahun,
        this.masaKerjaBulan,
        this.noSk,
        this.tanggalSk,
        this.penerbitSk,
        this.noNotaBkn,
        this.tanggalNotaBkn,
        this.idrefValiditas,
        this.lampiran,
        this.createdDate,
        this.aktif,
        this.createdBy,
        this.idlama,
        this.pangkat,
        this.golongan,
        this.organisasi,
        this.esl1,
        this.uraianStatusValiditas,
        this.hrRefPangkat,
        this.idrefValiditasNavigation});

  Pangkat.fromJson(Map<String, dynamic> json) {
    idpegawaiPangkat = json['IdpegawaiPangkat'];
    idpegawai = json['Idpegawai'];
    idrefPangkat = json['IdrefPangkat'];
    tanggalMulai = json['TanggalMulai'];
    tanggalSelesai = json['TanggalSelesai'];
    masaKerjaTahun = json['MasaKerjaTahun'];
    masaKerjaBulan = json['MasaKerjaBulan'];
    noSk = json['NoSk'];
    tanggalSk = json['TanggalSk'];
    penerbitSk = json['PenerbitSk'];
    noNotaBkn = json['NoNotaBkn'];
    tanggalNotaBkn = json['TanggalNotaBkn'];
    idrefValiditas = json['IdrefValiditas'];
    lampiran = json['Lampiran'];
    createdDate = json['CreatedDate'];
    aktif = json['Aktif'];
    createdBy = json['CreatedBy'];
    idlama = json['Idlama'];
    pangkat = json['Pangkat'];
    golongan = json['Golongan'];
    organisasi = json['Organisasi'];
    esl1 = json['Esl1'];
    uraianStatusValiditas = json['UraianStatusValiditas'];
    hrRefPangkat = json['HrRefPangkat'];
    idrefValiditasNavigation = json['IdrefValiditasNavigation'];
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