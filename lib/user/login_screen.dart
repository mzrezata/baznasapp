import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/admin/login_admin.dart';
import 'package:myapp/halamanutama.dart';
import 'package:myapp/user/register_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController noTeleponController = TextEditingController();
  final TextEditingController kataSandiController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

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
                              // Login menggunakan Firebase Authentication
                              UserCredential userCredential = await _auth.signInWithEmailAndPassword(
                                email: noTeleponController.text + "@yourapp.com",  // Gunakan format email palsu
                                password: kataSandiController.text,
                              );

                              Navigator.push(context, MaterialPageRoute(builder: (context) => halamanutama()));
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
                            backgroundColor: Colors.green,
                          ),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AdminLoginScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Login sebagai Admin',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Belum memiliki akun?'),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegisterScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                'Buat Akun Baru',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ],
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
