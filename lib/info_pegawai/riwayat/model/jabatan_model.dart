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



// class Jabatan {
//    int? idpegawaiJabatan;
//   int? idpegawai;
//   int? idjabatan;
//   String? jabatan;
//   String? jenisJabatan;
//   int? idjabatanAtasan;
//   String? jabatanAtasan;
//   String? tanggalMulai;
//   String? tanggalSelesai;
//   String? noSk;
//   String? tanggalSk;
//   int? idrefStatusJabatan;
//   String? statusJabatan;
//   String? idrefJenjangjabatan;
//   String? jenjangJabatan;
//   String? idrefKategoriJabatan;
//   String? kategoriJabatan;
//   String? tanggalPelantikan;
//   String? kodeOrganisasi;
//   String? unit;
//   String? esl1;
//   String? lampiran;
//   int? idrefValiditas;
//   String? uraianStatusValiditas;
//   String? aktif;
//   int? createdBy;
//   String? updatedBy;
//   DateTime? createdDate;
//   String? updatedDate;
//   Jabatan({
//     required this.idpegawaiJabatan,
//     required this.idpegawai,
//     required this.idjabatan,
//     required this.jabatan,
//     required this.jenisJabatan,
//     required this.idjabatanAtasan,
//     required this.jabatanAtasan,
//     required this.tanggalMulai,
//     required this.tanggalSelesai,
//     required this.noSk,
//     required this.tanggalSk,
//     required this.idrefStatusJabatan,
//     required this.statusJabatan,
//     required this.idrefJenjangjabatan,
//     required this.jenjangJabatan,
//     required this.idrefKategoriJabatan,
//     required this.kategoriJabatan,
//     required this.tanggalPelantikan,
//     required this.kodeOrganisasi,
//     required this.unit,
//     required this.esl1,
//     required this.lampiran,
//     required this.idrefValiditas,
//     required this.uraianStatusValiditas,
//     required this.aktif,
//     required this.createdBy,
//     required this.updatedBy,
//     required this.createdDate,
//     required this.updatedDate,
//   });

//   Jabatan.fromJson(Map<String, dynamic> json) {
//     idpegawaiJabatan =
//         json['IdpegawaiJabatan'] == null ? null : json['IdpegawaiJabatan'];
//     idpegawai = json['Idpegawai'] == null ? null : json['Idpegawai'];
//     idjabatan = json['Idjabatan'] == null ? null : json['Idjabatan'];
//     idjabatanAtasan =
//         json['IdjabatanAtasan'] == null ? null : json['IdjabatanAtasan'];
//     tanggalMulai = json['TanggalMulai'] == null ? null : json['TanggalMulai'];
//     tanggalSelesai =
//         json['TanggalSelesai'] == null ? null : json['TanggalSelesai'];
//     noSk = json['NoSk'] == null ? null : json['NoSk'];
//     tanggalSk = json['TanggalSk'] == null ? null : json['TanggalSk'];
//     idrefStatusJabatan =
//         json['IdrefStatusJabatan'] == null ? null : json['IdrefStatusJabatan'];
//     tanggalPelantikan =
//         json['TanggalPelantikan'] == null ? null : json['TanggalPelantikan'];
//     lampiran = json['Lampiran'] == null ? null : json['Lampiran'];
//     idrefValiditas =
//         json['IdrefValiditas'] == null ? null : json['IdrefValiditas'];
//     createdDate = json['CreatedDate'] == null ? null : json['CreatedDate'];
//     aktif = json['Aktif'] == null ? null : json['Aktif'];
//     createdBy = json['CreatedBy'] == null ? null : json['CreatedBy'];
//     idrefStatusData =
//         json['IdrefStatusData'] == null ? null : json['IdrefStatusData'];
//     idlama = json['Idlama'] == null ? null : json['Idlama'];
//     jenisJabatan = json['JenisJabatan'] == null ? null : json['JenisJabatan'];
//     jabatan = json['Jabatan'] == null ? null : json['Jabatan'];
//     unit = json['Unit'] == null ? null : json['Unit'];
//     statusJabatan =
//         json['StatusJabatan'] == null ? null : json['StatusJabatan'];
//     jabatanAtasan =
//         json['JabatanAtasan'] == null ? null : json['JabatanAtasan'];
//     organisasi = json['Organisasi'] == null ? null : json['Organisasi'];
//     kodeOrganisasi =
//         json['KodeOrganisasi'] == null ? null : json['KodeOrganisasi'];
//     uraianStatusValiditas =
//         json['UraianStatusValiditas'] == null ? null : json['IdpegawaiJabatan'];
//     esl1 = json['Esl1'] == null ? null : json['Esl1'];
//     idjabatanAtasanNavigation = json['IdjabatanAtasanNavigation'] == null
//         ? null
//         : json['IdjabatanAtasanNavigation'];
//     idjabatanNavigation = json['IdjabatanNavigation'] == null
//         ? null
//         : json['IdjabatanNavigation'];
//     idlamaNavigation =
//         json['IdlamaNavigation'] == null ? null : json['IdlamaNavigation'];
//     idrefStatusJabatanNavigation = json['IdrefStatusJabatanNavigation'] == null
//         ? null
//         : json['IdrefStatusJabatanNavigation'];
//     idrefValiditasNavigation = json['IdrefValiditasNavigation'] == null
//         ? null
//         : json['IdrefValiditasNavigation'];
//   }

  
//   Map<String, dynamic> toJson() => {
//         "IdpegawaiJabatan": idpegawaiJabatan == null ? null : idpegawaiJabatan,
//         "Idpegawai": idpegawai == null ? null : idpegawai,
//         "Idjabatan": idjabatan == null ? null : idjabatan,
//         "Jabatan": jabatan == null ? null : jabatan,
//         "JenisJabatan": jenisJabatan == null ? null : jenisJabatan,
//         "IdjabatanAtasan": idjabatanAtasan == null ? null : idjabatanAtasan,
//         "JabatanAtasan": jabatanAtasan == null ? null : jabatanAtasan,
//         "TanggalMulai":
//             tanggalMulai == null ? null : tanggalMulai.toIso8601String(),
//         "TanggalSelesai":
//             tanggalSelesai == null ? null : tanggalSelesai.toIso8601String(),
//         "NoSk": noSk == null ? null : noSk,
//         "TanggalSk": tanggalSk == null ? null : tanggalSk.toIso8601String(),
//         "IdrefStatusJabatan":
//             idrefStatusJabatan == null ? null : idrefStatusJabatan,
//         "StatusJabatan": statusJabatan == null ? null : statusJabatan,
//         "IdrefJenjangjabatan": idrefJenjangjabatan,
//         "JenjangJabatan": jenjangJabatan,
//         "IdrefKategoriJabatan": idrefKategoriJabatan,
//         "KategoriJabatan": kategoriJabatan,
//         "TanggalPelantikan": tanggalPelantikan,
//         "KodeOrganisasi": kodeOrganisasi == null ? null : kodeOrganisasi,
//         "Unit": unit == null ? null : unit,
//         "Esl1": esl1 == null ? null : esl1,
//         "Lampiran": lampiran == null ? null : lampiran,
//         "IdrefValiditas": idrefValiditas == null ? null : idrefValiditas,
//         "UraianStatusValiditas":
//             uraianStatusValiditas == null ? null : uraianStatusValiditas,
//         "Aktif": aktif,
//         "CreatedBy": createdBy == null ? null : createdBy,
//         "UpdatedBy": updatedBy,
//         "CreatedDate":
//             createdDate == null ? null : createdDate.toIso8601String(),
//         "UpdatedDate": updatedDate,
//       };
// }
