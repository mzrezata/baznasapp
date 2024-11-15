import 'package:flutter/material.dart';

class ProgKemanuisaan extends StatelessWidget {
  const ProgKemanuisaan({Key? key}) : super(key: key);

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
              'assets/images/baznas_logo.png',
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
              'assets/images/logistik.jpg',
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
                    'Paket Logistik Keluarga',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Bantuan paket sembako dalam kemasan yang layak diberikan kepada mustahik untuk memenuhi kebutuhan pokok.',
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
                'Tujuan:\n- Terpenuhinya kebutuhan dasar mustahik\n- Meringankan beban mustahik karena harus membeli bahan makanan pokok\n- Mencegah mustahik kelaparan\n\nSasaran:\n- Disabilitas\n- Janda dan lansia\n- Guru mengaji muslim yang dhuafa\n- Orang yang terkena musibah bencana alam',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // New image and description for Paket Logistik Keluarga
            Image.asset(
              'assets/images/logistik_keluarga.jpg',  // Make sure this file is available in your assets folder
              fit: BoxFit.cover,
              width: double.infinity,
              height: 250,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Bank Makanan',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Bantuan makanan siap saji bagi mustahik di wilayah kantong kemiskinan. Sumber penyediaan makanan bekerja sama dengan para pengusaha kuliner seperti restoran, hotel, catering maupun dikelola langsung oleh BAZNAS.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Tujuan:\n-Tersedianya makanan yang sehat dan bergizi bagi mustahik.\n-Mengurangi pengeluaran pembelian makanan bagi mustahik.\n\nSasaran:\nPekerja harian\nKeluarga pra sejahtera\nRumah singgah\nPesantren tradisional\nPanti sosial Islam.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
