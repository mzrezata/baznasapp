import 'package:flutter/material.dart';

class Menuberita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/baznas_logo.png', // Ganti dengan path logo BAZNAS
              height: 60,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            _buildNewsCard(
              "Pj Gubernur JATIM Apresiasi Peran BAZNAS Atasi Kemiskinan.",
              'assets/images/berita1.jpg',
            ),
            _buildNewsCard(
              "Sejak 2021, BAZNAS Berikan Beasiswa Bagi 17.481 Santri.",
              'assets/images/berita2.jpg',
            ),
            _buildNewsCard(
              "Bantuan BAZNAS RI untuk Palestina Tiba di Yordania.",
              'assets/images/berita3.jpeg',
            ),
            _buildNewsCard(
              "Pj Wali Kota Yogyakarta Dukung Inovasi BAZNAS untuk Mudahkan Pengelolaan ZIS-DSKL.",
              'assets/images/berita4.jpg',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNewsCard(String title, String imageAsset) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: Image.asset(
          imageAsset,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        title: Text(title),
      ),
    );
  }
}
