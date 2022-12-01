class Pegawai {
  String photo;
  String nip18;
  String nama;
  String kodeGolonganRuang;
  String jabatan;
  String statusPegawai;
  String email;
  String organisasi;
  int idPegawai;
  Pegawai.fromJson(Map<String, dynamic> json) {
    idPegawai = json["Idpegawai"];
    photo = json["Photo"];
    nip18 = json["Nip18"];
    nama = json["Nama"];
    kodeGolonganRuang = json["KodeGolonganRuang"];
    jabatan = json["Jabatan"];
    statusPegawai = json["StatusPegawai"];
    email = json["Email"];
    organisasi = json["Organisasi"];
  }
  Pegawai();
}

class Organisasi {
  String namaOrganisasi;
  int eselon;
  String uraianLengkap;
  String uraianPendek;
  String alamat;
  String namaPejabat;
  int esl;

  Organisasi.fromJson(Map<String, dynamic> json) {
    namaOrganisasi = json["NamaOrganisasi"];
    eselon = json["Eselon"];
    uraianLengkap = json["UraianLengkap"];
    uraianPendek = json["UraianPendek"];
    alamat = json["Alamat"];
    namaPejabat = json["NamaPejabat"];
    esl = json["Esl"];
  }
}
