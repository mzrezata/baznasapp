import 'package:flutter/material.dart';


class pendidakwah extends StatelessWidget {
  const pendidakwah({Key? key}) : super(key: key);

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
              'assets/images/pendakwah.jpg',
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
                    'PENDIDIKAN DAN DAKWAH',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Program BAZNAS dalam menyediakan dana pendidikan demi terjaminnya keberlangsungan program pendidikan bagi para mahasiswa dari keluarga kurang mampu serta sebagai pertanggungjawaban antar generasi',
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
                ' Jenis Beasiswa BAZNAS\n\n1)Beasiswa Cendekia BAZNAS Dalam Negeri\n   Diperuntukkan bagi mahasiswa jenjang D4/S1 berupa\nsubsidi UKT selama 4 semester.\n2)Sekolah Cendekia BAZNAS\n  Sekolah unggulan bebas biaya dan berasrama bagi\ndhuafa berprestasi.\n3)Beasiswa Khusus\n  Diperuntukkan bagi lembaga yang memiliki aktivitas\npengelolaan di sektor khusus seperti\ndaerah 3T, daerah dengan muslim minoritas, dan difabel.\n4)Beasiswa Riset\n  Bantuan penelitian tugas akhir bagi mahasiswa yang\nsedang menyelesaikan skripsi/tesis/disertasi dengan\ntema zakat.',
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
