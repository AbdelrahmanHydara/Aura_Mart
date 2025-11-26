import 'package:cloud_firestore/cloud_firestore.dart';
import 'database_services.dart';

class FireStoreServices implements DatabaseServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Add Data to Database
  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? docId,
  }) async {
    if (docId != null) {
      await firestore.collection(path).doc(docId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  // Get Data from Database
  @override
  Future<Map<String, dynamic>> getData({
    required String docId,
    required String path,
  }) async {
    var data = await firestore.collection(path).doc(docId).get();
    return data.data() as Map<String, dynamic>;
  }

  // Check Data Exists in Database
  @override
  Future<bool> checkDataExists({
    required String docId,
    required String path,
  }) async {
    var doc = await firestore.collection(path).doc(docId).get();
    return doc.exists;
  }
}
