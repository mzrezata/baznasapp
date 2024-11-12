import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/user/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController namaLengkapController = TextEditingController();
  final TextEditingController noTeleponController = TextEditingController();
  final TextEditingController nikController = TextEditingController();
  final TextEditingController kataSandiController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 14, 149, 45),
              Color.fromARGB(255, 10, 108, 23)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/baznas_logo.png',
                    height: 250,
                    width: 250,
                  ),
                  SizedBox(height: 40),
                  Container(
                    padding: const EdgeInsets.all(20),
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
                    child: Column(
                      children: [
                        TextField(
                          controller: namaLengkapController,
                          decoration: InputDecoration(
                            labelText: 'Nama Lengkap',
                            hintText: 'Masukkan Nama Lengkap',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: noTeleponController,
                          decoration: InputDecoration(
                            labelText: 'No Telepon',
                            hintText: 'Masukkan No Telepon',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            prefixIcon: Icon(Icons.phone),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: nikController,
                          decoration: InputDecoration(
                            labelText: 'NIK',
                            hintText: 'Masukkan NIK Anda',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            prefixIcon: Icon(Icons.badge),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: kataSandiController,
                          decoration: InputDecoration(
                            labelText: 'Kata Sandi',
                            hintText: 'Masukkan Kata Sandi',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            prefixIcon: Icon(Icons.lock),
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () async {
                            try {
                              // Membuat pengguna di Firebase Authentication
                              UserCredential userCredential =
                                  await _auth.createUserWithEmailAndPassword(
                                email: noTeleponController.text +
                                    "@yourapp.com", // Gunakan no telepon sebagai email palsu
                                password: kataSandiController.text,
                              );

                              // Menyimpan data pengguna di Firestore
                              await _firestore
                                  .collection('users')
                                  .doc(userCredential.user!.uid)
                                  .set({
                                'nama_lengkap': namaLengkapController.text,
                                'no_telepon': noTeleponController.text,
                                'nik': nikController.text,
                              });

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            } catch (e) {
                              print("Error: $e");
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            minimumSize: Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            backgroundColor: Color.fromARGB(255, 10, 108, 23),
                          ),
                          child: Text(
                            'DAFTAR',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
