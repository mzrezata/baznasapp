// lib/service/firestore_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  /// Menambahkan item ke koleksi tertentu

  Future<void> tambah(
      {required String collectionPath,
      required Map<String, dynamic> item}) async {
    await _firestore.collection(collectionPath).add(item);
  }

  /// Mengupdate item di koleksi tertentu berdasarkan ID
  Future<void> update(
      {required String collectionPath,
      required String id,
      required Map<String, dynamic> item}) async {
    await _firestore.collection(collectionPath).doc(id).update(item);
  }

  /// Menghapus item dari koleksi tertentu berdasarkan ID
  Future<void> hapus(
      {required String collectionPath, required String id}) async {
    await _firestore.collection(collectionPath).doc(id).delete();
  }

  /// Mendapatkan stream list item dari koleksi tertentu
  Stream<List<T>> getList<T>({
    required String collectionPath,
    required T Function(DocumentSnapshot doc) fromMap,
  }) {
    return _firestore
        .collection(collectionPath)
        .snapshots()
        .map((snapshot) => snapshot.docs.map((doc) => fromMap(doc)).toList());
  }

  /// Mendapatkan satu item dari koleksi tertentu berdasarkan ID
  Future<T> getById<T>({
    required String collectionPath,
    required String id,
    required T Function(DocumentSnapshot doc) fromMap,
  }) async {
    DocumentSnapshot doc =
        await _firestore.collection(collectionPath).doc(id).get();
    return fromMap(doc);
  }
}
