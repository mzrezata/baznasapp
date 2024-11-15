import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/admin/adminhalamanutama.dart';
import 'package:myapp/admin/daftar_admin.dart';

class AdminLoginScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
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
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/baznas_logo.png', // Update dengan path logo
                    height: 150,
                    width: 150,
                  ),
                  SizedBox(height: 20),
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
                          controller: usernameController,
                          decoration: InputDecoration(
                            labelText: 'Admin Username',
                            hintText: 'Masukkan Username Admin',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            prefixIcon: Icon(Icons.admin_panel_settings),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            labelText: 'Admin Kata Sandi',
                            hintText: 'Masukkan Kata Sandi Admin',
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
                            String username = usernameController.text;
                            String password = passwordController.text;

                            try {
                              // Masuk menggunakan kombinasi username sebagai email
                              UserCredential userCredential =
                                  await _auth.signInWithEmailAndPassword(
                                email: username + "@adminapp.com",
                                password: password,
                              );

                              // Verifikasi apakah pengguna terdaftar di koleksi 'admins' di Firestore
                              DocumentSnapshot adminDoc = await _firestore
                                  .collection('admins')
                                  .doc(userCredential.user!.uid)
                                  .get();

                              if (adminDoc.exists) {
                                // Navigasi ke halaman utama jika berhasil login
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HalamanUtamaAdmin()),
                                );
                              } else {
                                print(
                                    "Pengguna tidak terdaftar sebagai admin.");
                              }
                            } catch (e) {
                              print("Login Error: $e");
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            minimumSize: Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            backgroundColor: Colors.green,
                          ),
                          child: Text(
                            'LOGIN SEBAGAI ADMIN',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextButton(
                          onPressed: () {
                            // Navigasi ke halaman daftar admin
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterAdminScreen()),
                            );
                          },
                          child: Text(
                            'Daftar Admin',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            ),
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
