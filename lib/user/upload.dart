import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';
import 'package:myapp/user/proses.dart';

class UploadScreen extends StatefulWidget {
  @override
  _UploadScreenState createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  // Deklarasi variabel URL untuk tiap gambar yang diunggah
  String? ktpUrl;
  String? kkUrl;
  String? akteNikahUrl;
  String? sktmUrl; // Surat Keterangan Tidak Mampu
  String? fotoRumahUrl;
  String? suratSehatUrl;
  String? akteKelahiranUrl;

  final ImagePicker _picker = ImagePicker();

  // Fungsi untuk memilih dan mengupload gambar
  Future<void> _pickAndUploadImage(String label) async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      // Upload ke Firebase Storage
      String fileName = '${label}_${DateTime.now()}.jpg';
      Reference ref = FirebaseStorage.instance.ref().child('uploads/$fileName');
      await ref.putFile(File(pickedFile.path));

      // Mendapatkan URL gambar
      String downloadUrl = await ref.getDownloadURL();
      
      setState(() {
        switch (label) {
          case 'KTP':
            ktpUrl = downloadUrl;
            break;
          case 'KK':
            kkUrl = downloadUrl;
            break;
          case 'Akte Nikah':
            akteNikahUrl = downloadUrl;
            break;
          case 'Surat Keterangan Tidak Mampu':
            sktmUrl = downloadUrl;
            break;
          case 'Foto Rumah/Usaha':
            fotoRumahUrl = downloadUrl;
            break;
          case 'Surat Sehat':
            suratSehatUrl = downloadUrl;
            break;
          case 'Akte Kelahiran':
            akteKelahiranUrl = downloadUrl;
            break;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Persyaratan'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildUploadField('KTP', ktpUrl),
              buildUploadField('KK', kkUrl),
              buildUploadField('Akte Nikah', akteNikahUrl),
              buildUploadField('Surat Keterangan Tidak Mampu', sktmUrl),
              buildUploadField('Foto Rumah/Usaha', fotoRumahUrl),
              buildUploadField('Surat Sehat', suratSehatUrl),
              buildUploadField('Akte Kelahiran', akteKelahiranUrl),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Proses()),
                  );
                },
                child: const Text('SELESAI'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Membuat widget upload field
  Widget buildUploadField(String label, String? imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                labelText: label,
                border: OutlineInputBorder(),
                suffixIcon: imageUrl != null
                    ? Image.network(imageUrl) // Menampilkan gambar jika ada
                    : null,
              ),
              readOnly: true,
            ),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: () => _pickAndUploadImage(label), // Fungsi upload
            child: const Text('UPLOAD'),
          ),
        ],
      ),
    );
  }
}
