import 'package:flutter/material.dart';
import 'package:myapp/datapengajuan.dart';
import 'package:myapp/user/infak.dart';
import 'package:myapp/user/menuberita.dart';
import 'package:myapp/user/sedekah.dart';
import 'package:myapp/user/zakat.dart';

class HalamanUtamaAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 108, 23),
        elevation: 0,
        leading: PopupMenuButton<String>(
          icon: Icon(Icons.menu, color: Colors.black),
          onSelected: (value) {
            if (value == 'Data Pengajuan') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => datapengajuan()),
              );
            }
          },
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                value: 'Data Pengajuan',
                child: Text('Data Pengajuan'),
              ),
            ];
          },
        ),
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/baznas_logo.png',
              height: 60,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 14),
            // Tambahan gambar di bawah AppBar
            Image.asset(
              'assets/images/CSIMAGE2.png', // Ganti dengan path gambar Anda
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildMenuButton(context, Icons.favorite, "Zakat", Zakat()),
                _buildMenuButton(context, Icons.attach_money, "Infak", infak()),
                _buildMenuButton(context, Icons.handshake, "Sedekah", Sedekah()),
              ],
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Berita Terkini',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView(
                children: [
                  _buildNewsCard(
                    context,
                    "Pj Gubernur JATIM Apresiasi Peran BAZNAS Atasi Kemiskinan.",
                    'assets/images/berita1.jpg',
                  ),
                  _buildNewsCard(
                    context,
                    "Sejak 2021, BAZNAS Berikan Beasiswa Bagi 17.481 Santri.",
                    'assets/images/berita2.jpg',
                  ),
                  _buildNewsCard(
                    context,
                    "Bantuan BAZNAS RI untuk Palestina Tiba di Yordania.",
                    'assets/images/berita3.jpeg',
                  ),
                  _buildNewsCard(
                    context,
                    "Pj Wali Kota Yogyakarta Dukung Inovasi BAZNAS untuk Mudahkan Pengelolaan ZIS-DSKL.",
                    'assets/images/berita4.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton(
      BuildContext context, IconData icon, String title, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.green, width: 2),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            padding: EdgeInsets.all(8),
            child: Icon(icon, size: 32, color: Colors.green),
          ),
          SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildNewsCard(BuildContext context, String title, String imageAsset) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: Image.asset(
          imageAsset,
          width: 45,
          height: 70,
          fit: BoxFit.cover,
        ),
        title: Text(title),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Menuberita()),
          );
        },
      ),
    );
  }
}
