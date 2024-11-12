import 'package:flutter/material.dart';

class infak extends StatelessWidget {
  const infak({Key? key}) : super(key: key);

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
              'assets/images/infaq.jpg',
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
                    'Infak',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'infak adalah harta yang dikeluarkan oleh seseorang atau badan usaha di luar zakat untuk kemaslahatan umum (Menurut Undang-Undang Nomor 23 Tahun 2011 tentang Pengelolaan Zakat pada BAB I Pasal 1). infak merupakan amalan yang tak bisa lepas dari kehidupan sehari-hari seorang Muslim. infak berasal dari Bahasa Arab, "anfaqa" yang berarti membelanjakan harta atau memberikan harta. Sedangkan infak berarti keluarkanlah harta.',
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
                "Sejatinya infak dibagi menjadi dua, ada infak untuk kebaikan, dan infak untuk keburukan. infak kebaikan ini dilakukan atau dibelanjakan untuk di jalan Allah, yang juga dengan harta berasal dari hal baik. Allah Subhanahu Wata'ala memerintahkan setiap hambanya agar menyisihkan hartanya untuk berinfak yang hal ini masuk dalam kebaikan, dan Allah mencintai hambanya yang berbuat baik. Hal ini dijelaskan dalam Surat Ali Imran ayat 133-134.",
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
