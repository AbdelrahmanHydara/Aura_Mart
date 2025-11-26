
abstract class DatabaseServices {

  // Add Data to Database
  Future<void> addData({
    required String path,
    String? docId,
    required Map<String, dynamic> data,
  });

  // Get Data from Database
  Future<Map<String, dynamic>> getData({
    required String docId,
    required String path,
  });

  // Check Data Exists in Database
  Future<bool> checkDataExists({
    required String docId,
    required String path,
  });
}
