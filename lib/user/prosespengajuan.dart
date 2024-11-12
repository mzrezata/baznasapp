import 'package:flutter/material.dart';

class Prosespengajuan extends StatelessWidget {
  final String name;
  final String nik;
  final String jenisBantuan;
  final String jumlahBantuan;
  final String alamat;
  final String fotoPengaju; // Menambahkan parameter fotoPengaju

  const Prosespengajuan({
    Key? key,
    required this.name,
    required this.nik,
    required this.jenisBantuan,
    required this.jumlahBantuan,
    required this.alamat,
    required this.fotoPengaju, // Menambahkan parameter fotoPengaju
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(fotoPengaju),  // Menampilkan foto pengaju
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(nik),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          jenisBantuan,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        jumlahBantuan,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(alamat),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                // Aksi hapus
              },
            ),
          ],
        ),
      ),
    );
  }
}
