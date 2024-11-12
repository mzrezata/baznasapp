import 'package:flutter/material.dart';
import 'package:myapp/datapengajuan.dart';
import 'package:myapp/jenis_bantuan.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:myapp/datapengajuanuser.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 14, 149, 45),
        centerTitle: true,
        title: Image.asset(
          'assets/images/baznas_logo.png',
          height: 60,
        ),
        leading: PopupMenuButton<String>(
          icon: Icon(Icons.menu),
          onSelected: (value) {
            if (value == 'Daftar Penerima Bantuan') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Datapengajuanuser()),
              );
            } else if (value == 'Bantuan per Keluarga') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => datapengajuan()),
              );
              // Handle navigation or functionality here
            } else if (value == 'Jenis Bantuan') {
              // Navigate to PengajuanSyarat page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => JenisBantuan()),
              );
            }
          },
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                value: 'Daftar Penerima Bantuan',
                child: Text('Daftar Penerima Bantuan'),
              ),
              PopupMenuItem(
                value: 'Bantuan per Keluarga',
                child: Text('Bantuan per Keluarga'),
              ),
              PopupMenuItem(
                value: 'Jenis Bantuan',
                child: Text('Jenis Bantuan'),
              ),
            ];
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 14, 149, 45),
              Color.fromARGB(255, 10, 108, 23),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi Admin!',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'BERITA SEPUTAR BAZNAS',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: [
                    newsCard(
                      'Sederet Program Bansos Jokowi Bakal Lanjut di Era Prabowo.',
                      'assets/images/berita1.jpg',
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () async {
                        final Uri url = Uri.parse(
                            'https://www.detik.com/sumbagsel/berita/d-7568410/bansos-bpnt-oktober-2024-cair-ini-nominal-dan-cara-ceknya');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: newsCard(
                        'Momen Risma Perbarui Mekanisme Pengusulan Data Penerima Bansos',
                        'assets/images/berita2.jpg',
                      ),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () async {
                        final Uri url = Uri.parse(
                            'https://www.detik.com/sumbagsel/berita/d-7568410/bansos-bpnt-oktober-2024-cair-ini-nominal-dan-cara-ceknya');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: newsCard(
                        'Bansos BPNT Oktober 2024 Cair, Ini Nominal dan Cara Ceknya!',
                        'assets/images/berita3.jpg',
                      ),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () async {
                        final Uri url = Uri.parse(
                            'https://www.detik.com/sumbagsel/berita/d-7568410/bansos-bpnt-oktober-2024-cair-ini-nominal-dan-cara-ceknya');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: newsCard(
                        'Gus Ipul Buka Opsi Perluas Bansos ke Korban PHK.',
                        'assets/images/berita3.jpg',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget newsCard(String title, String imageUrl) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            child: Image.asset(
              imageUrl,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
