import 'package:flutter/material.dart';
import 'package:myapp/user/upload.dart';

class JenisBantuan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset(
          'assets/images/baznas_logo.png', // Replace with your Baznas logo
          height: 50,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              children: [
                Text(
                  'Program Seputar Baznas',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              children: [
                buildProgramCard(
                    context, 'Pengajuan bantuan Baznas Untuk keluarga'),
                SizedBox(height: 40),
                buildProgramCard(
                    context, 'Pengajuan bantuan Baznas Untuk Korporasi'),
                SizedBox(height: 40),
                buildProgramCard(
                    context, 'Pengajuan bantuan Baznas Untuk Perorangan'),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Berita',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Program',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  Widget buildProgramCard(BuildContext context, String text) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UploadScreen()),
        );
      },
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
