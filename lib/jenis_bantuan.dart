import 'package:flutter/material.dart';
import 'package:myapp/prog_kemanuisaan.dart';
import 'package:myapp/progkesehatan.dart';
import 'package:myapp/progpenddakwah.dart';

class JenisBantuan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 10, 108, 23),
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
                  context, 
                  'Perogram Kemanusiaan', 
                  ProgKemanuisaan(),
                ),
                SizedBox(height: 40),
                buildProgramCard(
                  context, 
                  'Program Kesehatan', 
                  Progkesehatan(),
                ),
                SizedBox(height: 40),
                buildProgramCard(
                  context, 
                  'Perogram Pendidikan dan Dakwah', 
                   pendidakwah(),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProgramCard(BuildContext context, String text, Widget targetPage) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetPage),
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
