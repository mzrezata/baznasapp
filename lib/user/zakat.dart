import 'package:flutter/material.dart';

class Zakat extends StatelessWidget {
  const Zakat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 108, 23),
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: [
            Image.asset(
              'assets/images/baznas_logo.png', // Path ke logo Baznas
              height: 50,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/petanizakat.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 250,
            ),
            const SizedBox(height: 20),
            // Judul dan deskripsi tentang Zakat
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Zakat',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Zakat adalah bagian tertentu dari harta yang wajib dikeluarkan oleh setiap muslim apabila telah mencapai syarat yang ditetapkan. Sebagai salah satu rukun Islam, Zakat ditunaikan untuk diberikan kepada golongan yang berhak menerimanya (asnaf).',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.green,
              child: const Text(
                'Zakat berasal dari bentuk kata "zaka" yang berarti suci, baik, berkah, tumbuh, dan berkembang. Dinamakan zakat, karena di dalamnya terkandung harapan untuk membersihkan dan menyucikan diri dengan harta yang dikeluarkan untuk orang yang membutuhkan.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
