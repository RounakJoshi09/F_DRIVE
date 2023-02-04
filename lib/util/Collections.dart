import 'package:cloud_firestore/cloud_firestore.dart';

class Collections {
  static CollectionReference<Map<String, dynamic>> userCollection =
      FirebaseFirestore.instance.collection('user');
}
