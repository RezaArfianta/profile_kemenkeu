class Diklat {
  int idpegawaiDiklat;
  int idpegawai;
  int idrefJenisDiklat;
  String tanggalDiklat;
  int tahunDiklat;
  String namaDiklat;
  String noSertifikat;
  String institusiPenyelenggara;
  String namaInstansi;
  String kompetensi;
  String lampiran;
  String createdDate;
  String aktif;
  int idrefStatusData;
  int idrefValiditas;
  int createdBy;
  int idlama;
  int jamlat;
  String tanggalSertifikat;
  String linkSertifikat;
  String subjenisDiklat;
  String tanggalSelesaiDiklat;
  String rumpunDiklat;
  int idrefDiklatSemantik;
  int idCourse;
  String batch;
  String klasifikasiDiklat;
  String uraianStatusValiditas;
  String createdByNavigation;
  int idlamaNavigation;
  int idrefValiditasNavigation;

  Diklat(
      {this.idpegawaiDiklat,
        this.idpegawai,
        this.idrefJenisDiklat,
        this.tanggalDiklat,
        this.tahunDiklat,
        this.namaDiklat,
        this.noSertifikat,
        this.institusiPenyelenggara,
        this.namaInstansi,
        this.kompetensi,
        this.lampiran,
        this.createdDate,
        this.aktif,
        this.idrefStatusData,
        this.idrefValiditas,
        this.createdBy,
        this.idlama,
        this.jamlat,
        this.tanggalSertifikat,
        this.linkSertifikat,
        this.subjenisDiklat,
        this.tanggalSelesaiDiklat,
        this.rumpunDiklat,
        this.idrefDiklatSemantik,
        this.idCourse,
        this.batch,
        this.klasifikasiDiklat,
        this.uraianStatusValiditas,
        this.createdByNavigation,
        this.idlamaNavigation,
        this.idrefValiditasNavigation,});

  Diklat.fromJson(Map<String, dynamic> json) {
    idpegawaiDiklat = json['IdpegawaiDiklat'];
    idpegawai = json['Idpegawai'];
    idrefJenisDiklat = json['IdrefJenisDiklat'];
    tanggalDiklat = json['TanggalDiklat'];
    tahunDiklat = json['TahunDiklat'];
    namaDiklat = json['NamaDiklat'];
    noSertifikat = json['NoSertifikat'];
    institusiPenyelenggara = json['InstitusiPenyelenggara'];
    namaInstansi = json['NamaInstansi'];
    kompetensi = json['Kompetensi'];
    lampiran = json['Lampiran'];
    createdDate = json['CreatedDate'];
    aktif = json['Aktif'];
    idrefStatusData = json['IdrefStatusData'];
    idrefValiditas = json['IdrefValiditas'];
    createdBy = json['CreatedBy'];
    idlama = json['Idlama'];
    jamlat = json['Jamlat'];
    tanggalSertifikat = json['TanggalSertifikat'];
    linkSertifikat = json['LinkSertifikat'];
    subjenisDiklat = json['SubjenisDiklat'];
    tanggalSelesaiDiklat = json['TanggalSelesaiDiklat'];
    rumpunDiklat = json['RumpunDiklat'];
    idrefDiklatSemantik = json['IdrefDiklatSemantik'];
    idCourse = json['IdCourse'];
    batch = json['Batch'];
    klasifikasiDiklat = json['KlasifikasiDiklat'];
    uraianStatusValiditas = json['UraianStatusValiditas'];
    createdByNavigation = json['CreatedByNavigation'];
    idlamaNavigation = json['IdlamaNavigation'];
    idrefValiditasNavigation = json['IdrefValiditasNavigation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IdpegawaiDiklat'] = this.idpegawaiDiklat;
    data['Idpegawai'] = this.idpegawai;
    data['IdrefJenisDiklat'] = this.idrefJenisDiklat;
    data['TanggalDiklat'] = this.tanggalDiklat;
    data['TahunDiklat'] = this.tahunDiklat;
    data['NamaDiklat'] = this.namaDiklat;
    data['NoSertifikat'] = this.noSertifikat;
    data['InstitusiPenyelenggara'] = this.institusiPenyelenggara;
    data['NamaInstansi'] = this.namaInstansi;
    data['Kompetensi'] = this.kompetensi;
    data['Lampiran'] = this.lampiran;
    data['CreatedDate'] = this.createdDate;
    data['Aktif'] = this.aktif;
    data['IdrefStatusData'] = this.idrefStatusData;
    data['IdrefValiditas'] = this.idrefValiditas;
    data['CreatedBy'] = this.createdBy;
    data['Idlama'] = this.idlama;
    data['Jamlat'] = this.jamlat;
    data['TanggalSertifikat'] = this.tanggalSertifikat;
    data['LinkSertifikat'] = this.linkSertifikat;
    data['SubjenisDiklat'] = this.subjenisDiklat;
    data['TanggalSelesaiDiklat'] = this.tanggalSelesaiDiklat;
    data['RumpunDiklat'] = this.rumpunDiklat;
    data['IdrefDiklatSemantik'] = this.idrefDiklatSemantik;
    data['IdCourse'] = this.idCourse;
    data['Batch'] = this.batch;
    data['KlasifikasiDiklat'] = this.klasifikasiDiklat;
    data['UraianStatusValiditas'] = this.uraianStatusValiditas;
    data['CreatedByNavigation'] = this.createdByNavigation;
    data['IdlamaNavigation'] = this.idlamaNavigation;
    data['IdrefValiditasNavigation'] = this.idrefValiditasNavigation;
    return data;
  }
}

