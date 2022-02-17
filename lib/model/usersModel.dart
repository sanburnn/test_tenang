class GetMahasiswa {
  String? id;
  String? nim;
  String? nama;
  String? jk;
  String? alamat;
  String? jurusan;

  GetMahasiswa(
      {this.id, this.nim, this.nama, this.jk, this.alamat, this.jurusan});

  GetMahasiswa.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nim = json['nim'];
    nama = json['nama'];
    jk = json['jk'];
    alamat = json['alamat'];
    jurusan = json['jurusan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nim'] = this.nim;
    data['nama'] = this.nama;
    data['jk'] = this.jk;
    data['alamat'] = alamat;
    data['jurusan'] = this.jurusan;
    return data;
  }
}
