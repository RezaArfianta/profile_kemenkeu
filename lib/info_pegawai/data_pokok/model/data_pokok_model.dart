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
      {required this.idpegawai,
      required this.nip9,
      required this.nip18,
      required this.nik,
      required this.nama,
      required this.kodeGolongan,
      required this.kodeGolonganRuang,
      required this.jabatan,
      required this.jenisJabatan,
      required this.statusPegawai,
      required this.gelarBelakang,
      required this.esl1,
      required this.esl2,
      required this.esl3,
      required this.esl4,
      required this.esl5,
      required this.kdSatker,
      required this.namaSatker,
      required this.tempatLahir,
      required this.tanggalLahir,
      required this.jenisKelamin,
      required this.agama,
      required this.golonganDarah,
      required this.npwp,
      required this.alamatKtp,
      required this.kotaKtp,
      required this.provinsiKtp,
      required this.kodePosKtp,
      required this.alamatDomisili,
      required this.kotaDomisili,
      required this.provinsiDomisili,
      required this.kodePosDomisili,
      required this.nomorTelepon,
      required this.email,
      required this.noHp,
      required this.noKk,
      required this.namaKontakDarurat,
      required this.nomorKontakDarurat,
      required this.kodeOrganisasi,
      required this.kodeIndukOrganisasi,
      required this.organisasi,
      required this.grading});

  factory DataPokok.fromJson(Map<String, dynamic> json) => DataPokok(
        idpegawai: json['Idpegawai'] == null ? null : json['Idpegawai'],
        nip9: json['Nip9'] == null ? null : json['Nip9'],
        nip18: json['Nip18'] == null ? null : json['Nip18'],
        nik: json['Nik'] == null ? null : json['Nik'],
        nama: json['Nama'] == null ? null : json['Nama'],
        kodeGolongan:
            json['KodeGolongan'] == null ? null : json['KodeGolongan'],
        kodeGolonganRuang: json['KodeGolonganRuang'] == null
            ? null
            : json['KodeGolonganRuang'],
        jabatan: json['Jabatan'] == null ? null : json['Jabatan'],
        jenisJabatan:
            json['JenisJabatan'] == null ? null : json['JenisJabatan'],
        statusPegawai:
            json['StatusPegawai'] == null ? null : json['StatusPegawai'],
        gelarBelakang:
            json['GelarBelakang'] == null ? null : json['GelarBelakang'],
        esl1: json['Esl1'] == null ? null : json['Esl1'],
        esl2: json['Esl2'] == null ? null : json['Esl2'],
        esl3: json['Esl3'] == null ? null : json['Esl3'],
        esl4: json['Esl4'] == null ? null : json['Esl4'],
        esl5: json['Esl5'] == null ? null : json['Esl5'],
        kdSatker: json['KdSatker'] == null ? null : json['KdSatker'],
        namaSatker: json['NamaSatker'] == null ? null : json['NamaSatker'],
        tempatLahir: json['TempatLahir'] == null ? null : json['TempatLahir'],
        tanggalLahir:
            json['TanggalLahir'] == null ? null : json['TanggalLahir'],
        jenisKelamin:
            json['JenisKelamin'] == null ? null : json['JenisKelamin'],
        agama: json['Agama'] == null ? null : json['Agama'],
        golonganDarah:
            json['GolonganDarah'] == null ? null : json['GolonganDarah'],
        npwp: json['Npwp'] == null ? null : json['Npwp'],
        alamatKtp: json['AlamatKtp'] == null ? null : json['AlamatKtp'],
        kotaKtp: json['KotaKtp'] == null ? null : json['KotaKtp'],
        provinsiKtp: json['ProvinsiKtp'] == null ? null : json['ProvinsiKtp'],
        kodePosKtp: json['KodePosKtp'] == null ? null : json['KodePosKtp'],
        alamatDomisili:
            json['AlamatDomisili'] == null ? null : json['AlamatDomisili'],
        kotaDomisili:
            json['KotaDomisili'] == null ? null : json['KotaDomisili'],
        provinsiDomisili:
            json['ProvinsiDomisili'] == null ? null : json['ProvinsiDomisili'],
        kodePosDomisili:
            json['KodePosDomisili'] == null ? null : json['KodePosDomisili'],
        nomorTelepon:
            json['NomorTelepon'] == null ? null : json['NomorTelepon'],
        email: json['Email'] == null ? null : json['Email'],
        noHp: json['NoHp'] == null ? null : json['NoHp'],
        noKk: json['NoKk'] == null ? null : json['NoKk'],
        namaKontakDarurat: json['NamaKontakDarurat'] == null
            ? null
            : json['NamaKontakDarurat'],
        nomorKontakDarurat: json['NomorKontakDarurat'] == null
            ? null
            : json['NomorKontakDarurat'],
        kodeOrganisasi:
            json['KodeOrganisasi'] == null ? null : json['KodeOrganisasi'],
        kodeIndukOrganisasi: json['KodeIndukOrganisasi'] == null
            ? null
            : json['KodeIndukOrganisasi'],
        organisasi: json['Organisasi'] == null ? null : json['Organisasi'],
        grading: json['Grading'] == null ? null : json['Grading'],
      );

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
