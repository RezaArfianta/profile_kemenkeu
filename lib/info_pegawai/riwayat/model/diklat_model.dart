class Diklat {
  int? idpegawaiDiklat;
  int? idpegawai;
  int? idrefJenisDiklat;
  String? tanggalDiklat;
  int? tahunDiklat;
  String? namaDiklat;
  String? noSertifikat;
  String? institusiPenyelenggara;
  String? namaInstansi;
  String? kompetensi;
  String? lampiran;
  String? createdDate;
  String? aktif;
  int? idrefStatusData;
  int? idrefValiditas;
  int? createdBy;
  int? idlama;
  int? jamlat;
  String? tanggalSertifikat;
  String? linkSertifikat;
  String? subjenisDiklat;
  String? tanggalSelesaiDiklat;
  String? rumpunDiklat;
  int? idrefDiklatSemantik;
  int? idCourse;
  String? batch;
  String? klasifikasiDiklat;
  String? uraianStatusValiditas;
  String? createdByNavigation;
  int? idlamaNavigation;
  int? idrefValiditasNavigation;

  Diklat({
    required this.idpegawaiDiklat,
    required this.idpegawai,
    required this.idrefJenisDiklat,
    required this.tanggalDiklat,
    required this.tahunDiklat,
    required this.namaDiklat,
    required this.noSertifikat,
    required this.institusiPenyelenggara,
    required this.namaInstansi,
    required this.kompetensi,
    required this.lampiran,
    required this.createdDate,
    required this.aktif,
    required this.idrefStatusData,
    required this.idrefValiditas,
    required this.createdBy,
    required this.idlama,
    required this.jamlat,
    required this.tanggalSertifikat,
    required this.linkSertifikat,
    required this.subjenisDiklat,
    required this.tanggalSelesaiDiklat,
    required this.rumpunDiklat,
    required this.idrefDiklatSemantik,
    required this.idCourse,
    required this.batch,
    required this.klasifikasiDiklat,
    required this.uraianStatusValiditas,
    required this.createdByNavigation,
    required this.idlamaNavigation,
    required this.idrefValiditasNavigation,
  });

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
