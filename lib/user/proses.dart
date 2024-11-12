import 'package:flutter/material.dart';
import 'package:myapp/halamanutama.dart';

class Proses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20),
              CircularProgressIndicator(
                color: Colors.black,
                strokeWidth: 6.0,
              ),
              SizedBox(height: 30),
              Text(
                'PENGAJUAN ANDA\nSEDANG DIPROSES',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => halamanutama()),
                  );
                },
                child: Text('KEMBALI'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[400],
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
