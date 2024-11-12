import 'package:flutter/material.dart';

class Datapengajuanuser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextField(
          decoration: InputDecoration(
            hintText: 'Cari',
            prefixIcon: Icon(Icons.search),
            border: InputBorder.none,
          ),
        ),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            _buildCard(
              context,
              name: 'Reza',
              nik: '31760215032000002',
              jenisBantuan: 'Beasiswa',
              jumlahBantuan: 'Rp. 4.000.000',
              alamat: 'Medan Armageddon',
              avatar:
                  'assets/images/cr7.jpeg', // Pastikan file gambar ada di folder assets
              color: Colors.blueAccent,
            ),
            _buildCard(
              context,
              name: 'Faiz Farid',
              nik: '2971022090200002',
              jenisBantuan: 'Modal Usaha',
              jumlahBantuan: 'Rp. 1.000.000',
              alamat: 'Solo MoshPit City',
              avatar: 'assets/images/jhony.jpeg',
              color: Colors.greenAccent,
            ),
            _buildCard(
              context,
              name: 'Gunawan',
              nik: '350102012570004',
              jenisBantuan: 'Kebutuhan Pokok',
              jumlahBantuan: 'Rp. 2.500.000',
              alamat: 'Surabaya Keras',
              avatar: 'assets/images/jordy.jpeg',
              color: Colors.purpleAccent,
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membangun card dengan data penerima bantuan
  Widget _buildCard(
    BuildContext context, {
    required String name,
    required String nik,
    required String jenisBantuan,
    required String jumlahBantuan,
    required String alamat,
    required String avatar,
    required Color color,
  }) {
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
              backgroundImage: AssetImage(avatar),
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
                          color: color,
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
          ],
        ),
      ),
    );
  }
}
