import 'package:flutter/material.dart';

import '../models/todo.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // List: sekumpulan todo yang akan ditampilkan
  final List<Todo> todoList = [
    Todo(
      judul: "Belajar",
      deskripsi: "Belajar Desain Flutter",
      selesai: false,
    ),
    Todo(
      judul: "Olahraga",
      deskripsi: "Jogging pagi selama 30 menit",
      selesai: true,
    ),
    Todo(
      judul: "Makan Siang",
      deskripsi: "Makan siang sehat dengan sayuran",
      selesai: false,
    ),
    Todo(
      judul: "Bekerja",
      deskripsi: "Menyelesaikan project mobile app",
      selesai: true,
    ),
    Todo(
      judul: "Membaca Buku",
      deskripsi: "Membaca buku 'Clean Code'",
      selesai: true,
    ),
    Todo(
      judul: "Berkebun",
      deskripsi: "Menyiram tanaman di taman rumah",
      selesai: false,
    ),
    Todo(
      judul: "Belajar Bahasa",
      deskripsi: "Latihan percakapan bahasa Inggris",
      selesai: true,
    ),
  ];

  // Fungsi: untuk menampilkan tulisan/judul "All ToDo's"
  // ↓ ↓ ↓ ↓ ↓ ↓
  Widget listViewTitle() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: double.maxFinite,
      child: const Text(
        "All ToDo's",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }

  // Fungsi: untuk menampilkan satu buah todo
  // ↓ ↓ ↓ ↓ ↓ ↓
  Widget cardItem(int todoIndex) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Material(
        color: Colors.transparent,
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          onTap: () {
            // perintah checklist/uncheck
          },
          onLongPress: () {
            // perintah untuk update
          },
          tileColor: Colors.white,
          // Mengubah kondisi icon checked-nya sesuai dengan data Todo
          // ↓ ↓ ↓ ↓ ↓ ↓
          leading: Icon(
            todoList[todoIndex].selesai
                ? Icons.check_box_rounded
                : Icons.check_box_outline_blank,
            color: Colors.blue,
          ),
          // Mengubah judulnya sesuai dengan data Todo
          // ↓ ↓ ↓ ↓ ↓ ↓
          title: Text(todoList[todoIndex].judul),
          // Mengubah deskripsinya sesuai dengan data Todo
          // ↓ ↓ ↓ ↓ ↓ ↓
          subtitle: Text(
            todoList[todoIndex].deskripsi,
            style: const TextStyle(color: Colors.grey),
          ),
          trailing: IconButton(
            onPressed: () {
              // perintah hapus
            },
            icon: Icon(
              Icons.delete,
              color: Colors.red[300],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFececf4),
      // Widget: App bar untuk menampilkan ikon menu dan profil
      // ↓ ↓ ↓ ↓ ↓ ↓
      appBar: AppBar(
        backgroundColor: const Color(0xFFececf4),
        scrolledUnderElevation: 0,
        leading: const Icon(Icons.menu),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.all(10),
            child: const Icon(
              Icons.person,
              color: Colors.blue,
            ),
          ),
        ],
        actionsPadding: const EdgeInsets.only(right: 20),
      ),
      // Widget: isi dari halaman seperti search, dan list todo,
      // ↓ ↓ ↓ ↓ ↓ ↓
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          children: [
            // Widget: untuk bagian search box
            // ↓ ↓ ↓ ↓ ↓ ↓
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 12, right: 20),
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: "Search",
                ),
              ),
            ),
            // Widget: list dari todo
            // ↓ ↓ ↓ ↓ ↓ ↓
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 50),
                  // Sesuaikan jumlah item dengan data yang ada
                  itemCount: todoList.length + 1, // +1 untuk header "All ToDo's"
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return listViewTitle(); // Tampilkan header
                    } else {
                      // Index dikurangi 1 karena index 0 digunakan untuk header
                      return cardItem(index - 1);
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      // Widget: floating button/tombol "tambah" di pojok kanan bawah
      // ↓ ↓ ↓ ↓ ↓ ↓
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[300],
        onPressed: () {
          // perintah untuk membuat todo baru
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
