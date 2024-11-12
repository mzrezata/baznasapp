import 'package:flutter/material.dart';


class Sedekah extends StatelessWidget {
  const Sedekah({Key? key}) : super(key: key);

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
              'assets/images/sedekah.jpg',
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
                    'Sedekah',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Sedekah merupakan kata yang sangat familiar di kalangan umat Islam. Sedekah diambil dari kata bahasa Arab yaitu “shadaqah”, berasal dari kata sidq (sidiq) yang berarti “kebenaran”. Menurut peraturan BAZNAS No.2 tahun 2016, sedekah adalah harta atau non harta yang dikeluarkan oleh seseorang atau badan usaha di luar zakat untuk kemaslahatan umum.',                    
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
                "Sedekah merupakan amalan yang dicintai Allah SWT. Hal ini dibuktikan dengan banyaknya ayat Al-Qur’an yang menyebutkan tentang sedekah, salah satunya dalam surat Al-Baqarah ayat 271, \n“Jika kamu menampakkan sedekah (mu), maka itu adalah baik sekali. Dan jika kamu menyembunyikannya dan kamu berikan kepada orang-orang fakir, maka menyembunyikan itu lebih baik bagimu. Dan Allah akan menghapuskan dari kamu sebagian kesalahan-kesalahanmu, dan Allah mengetahui apa yang kamu kerjakan” (QS. Al-Baqarah: 271).",
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
