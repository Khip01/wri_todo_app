class Todo {
  String judul;
  String deskripsi;
  bool selesai;

  Todo({
    required this.judul,
    required this.deskripsi,
    this.selesai = false,
  });
}