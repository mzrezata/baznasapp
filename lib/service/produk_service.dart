// lib/service/produk_service.dart
import '../model/produk_model.dart';
import 'firestore_service.dart';

class ProdukService {
  final FirestoreService _firestoreService = FirestoreService();
  final String collectionPath = 'produk';
  Future<void> tambahProduk(Produk produk) {
    return _firestoreService.tambah(
      collectionPath: collectionPath,
      item: produk.toMap(),
    );
  }

  Future<void> updateProduk(Produk produk) {
    return _firestoreService.update(
      collectionPath: collectionPath,
      id: produk.id,
      item: produk.toMap(),
    );
  }

  Future<void> hapusProduk(String id) {
    return _firestoreService.hapus(
      collectionPath: collectionPath,
      id: id,
    );
  }

  Stream<List<Produk>> getProdukList() {
    return _firestoreService.getList(
      collectionPath: collectionPath,
      fromMap: (doc) => Produk.fromDocument(doc),
    );
  }

  Future<Produk> getProdukById(String id) {
    return _firestoreService.getById(
      collectionPath: collectionPath,
      id: id,
      fromMap: (doc) => Produk.fromDocument(doc),
    );
  }
}
