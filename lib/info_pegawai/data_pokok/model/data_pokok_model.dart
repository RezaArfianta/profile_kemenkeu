class DataPokok {
  int idpegawai;
  String nip9;
  String nip18;
  String nik;
  String nama;
  String kodeGolongan;
  String kodeGolonganRuang;
  String jabatan;
  String jenisJabatan;
  String statusPegawai;
  String gelarBelakang;
  String esl1;
  String esl2;
  String esl3;
  String esl4;
  String esl5;
  String kdSatker;
  String namaSatker;
  String tempatLahir;
  String tanggalLahir;
  String jenisKelamin;
  String agama;
  String golonganDarah;
  String npwp;
  String alamatKtp;
  String kotaKtp;
  String provinsiKtp;
  String kodePosKtp;
  String alamatDomisili;
  String kotaDomisili;
  String provinsiDomisili;
  String kodePosDomisili;
  String nomorTelepon;
  String email;
  String noHp;
  String noKk;
  String namaKontakDarurat;
  String nomorKontakDarurat;
  String kodeOrganisasi;
  String kodeIndukOrganisasi;
  String organisasi;
  int grading;

  DataPokok(
      {this.idpegawai,
        this.nip9,
        this.nip18,
        this.nik,
        this.nama,
        this.kodeGolongan,
        this.kodeGolonganRuang,
        this.jabatan,
        this.jenisJabatan,
        this.statusPegawai,
        this.gelarBelakang,
        this.esl1,
        this.esl2,
        this.esl3,
        this.esl4,
        this.esl5,
        this.kdSatker,
        this.namaSatker,
        this.tempatLahir,
        this.tanggalLahir,
        this.jenisKelamin,
        this.agama,
        this.golonganDarah,
        this.npwp,
        this.alamatKtp,
        this.kotaKtp,
        this.provinsiKtp,
        this.kodePosKtp,
        this.alamatDomisili,
        this.kotaDomisili,
        this.provinsiDomisili,
        this.kodePosDomisili,
        this.nomorTelepon,
        this.email,
        this.noHp,
        this.noKk,
        this.namaKontakDarurat,
        this.nomorKontakDarurat,
        this.kodeOrganisasi,
        this.kodeIndukOrganisasi,
        this.organisasi,
        this.grading});

  DataPokok.fromJson(Map<String, dynamic> json) {
    idpegawai = json['Idpegawai'];
    nip9 = json['Nip9'];
    nip18 = json['Nip18'];
    nik = json['Nik'];
    nama = json['Nama'];
    kodeGolongan = json['KodeGolongan'];
    kodeGolonganRuang = json['KodeGolonganRuang'];
    jabatan = json['Jabatan'];
    jenisJabatan = json['JenisJabatan'];
    statusPegawai = json['StatusPegawai'];
    gelarBelakang = json['GelarBelakang'];
    esl1 = json['Esl1'];
    esl2 = json['Esl2'];
    esl3 = json['Esl3'];
    esl4 = json['Esl4'];
    esl5 = json['Esl5'];
    kdSatker = json['KdSatker'];
    namaSatker = json['NamaSatker'];
    tempatLahir = json['TempatLahir'];
    tanggalLahir = json['TanggalLahir'];
    jenisKelamin = json['JenisKelamin'];
    agama = json['Agama'];
    golonganDarah = json['GolonganDarah'];
    npwp = json['Npwp'];
    alamatKtp = json['AlamatKtp'];
    kotaKtp = json['KotaKtp'];
    provinsiKtp = json['ProvinsiKtp'];
    kodePosKtp = json['KodePosKtp'];
    alamatDomisili = json['AlamatDomisili'];
    kotaDomisili = json['KotaDomisili'];
    provinsiDomisili = json['ProvinsiDomisili'];
    kodePosDomisili = json['KodePosDomisili'];
    nomorTelepon = json['NomorTelepon'];
    email = json['Email'];
    noHp = json['NoHp'];
    noKk = json['NoKk'];
    namaKontakDarurat = json['NamaKontakDarurat'];
    nomorKontakDarurat = json['NomorKontakDarurat'];
    kodeOrganisasi = json['KodeOrganisasi'];
    kodeIndukOrganisasi = json['KodeIndukOrganisasi'];
    organisasi = json['Organisasi'];
    grading = json['Grading'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Idpegawai'] = this.idpegawai;
    data['Nip9'] = this.nip9;
    data['Nip18'] = this.nip18;
    data['Nik'] = this.nik;
    data['Nama'] = this.nama;
    data['KodeGolongan'] = this.kodeGolongan;
    data['KodeGolonganRuang'] = this.kodeGolonganRuang;
    data['Jabatan'] = this.jabatan;
    data['JenisJabatan'] = this.jenisJabatan;
    data['StatusPegawai'] = this.statusPegawai;
    data['GelarBelakang'] = this.gelarBelakang;
    data['Esl1'] = this.esl1;
    data['Esl2'] = this.esl2;
    data['Esl3'] = this.esl3;
    data['Esl4'] = this.esl4;
    data['Esl5'] = this.esl5;
    data['KdSatker'] = this.kdSatker;
    data['NamaSatker'] = this.namaSatker;
    data['TempatLahir'] = this.tempatLahir;
    data['TanggalLahir'] = this.tanggalLahir;
    data['JenisKelamin'] = this.jenisKelamin;
    data['Agama'] = this.agama;
    data['GolonganDarah'] = this.golonganDarah;
    data['Npwp'] = this.npwp;
    data['AlamatKtp'] = this.alamatKtp;
    data['KotaKtp'] = this.kotaKtp;
    data['ProvinsiKtp'] = this.provinsiKtp;
    data['KodePosKtp'] = this.kodePosKtp;
    data['AlamatDomisili'] = this.alamatDomisili;
    data['KotaDomisili'] = this.kotaDomisili;
    data['ProvinsiDomisili'] = this.provinsiDomisili;
    data['KodePosDomisili'] = this.kodePosDomisili;
    data['NomorTelepon'] = this.nomorTelepon;
    data['Email'] = this.email;
    data['NoHp'] = this.noHp;
    data['NoKk'] = this.noKk;
    data['NamaKontakDarurat'] = this.namaKontakDarurat;
    data['NomorKontakDarurat'] = this.nomorKontakDarurat;
    data['KodeOrganisasi'] = this.kodeOrganisasi;
    data['KodeIndukOrganisasi'] = this.kodeIndukOrganisasi;
    data['Organisasi'] = this.organisasi;
    data['Grading'] = this.grading;
    return data;
  }
}

