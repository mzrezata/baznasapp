import 'package:cloud_firestore/cloud_firestore.dart';

class Produk {
  String id;
  String nama;
  String deskripsi;
  double harga;
  String gambarUrl;
  Produk({
    required this.id,
    required this.nama,
    required this.deskripsi,
    required this.harga,
    required this.gambarUrl,
  });
  factory Produk.fromDocument(DocumentSnapshot doc) {
    return Produk(
      id: doc.id,
      nama: doc['nama'],
      deskripsi: doc['deskripsi'],
      harga: doc['harga'].toDouble(),
      gambarUrl: doc['gambarUrl'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'nama': nama,
      'deskripsi': deskripsi,
      'harga': harga,
      'gambarUrl': gambarUrl,
    };
  }
}
