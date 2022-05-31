import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> creatStore(String? storeName, String? storeMail, String? location,
    String? description) async {
  CollectionReference users = FirebaseFirestore.instance.collection('store');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = "awHaoXQclfrLMwbFbDZJ";
  users.doc(uid).set({
    'storeid': uid,
    'storename': storeName,
    'email': storeMail,
    'location': location,
    'description': description
  });
  return;
}

Future<void> creatproduct(String productName, int price, String description,
    String image, String category) async {
  CollectionReference users = FirebaseFirestore.instance.collection('product');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  users.doc(uid).set({
    'creatorId': uid,
    'productname': productName,
    'price': price,
    'description': description,
    'category': category,
    'image': image
  });
  return;
}

Stream<DocumentSnapshot<Map<String, dynamic>>> fetchProduct(String productID) {
  Stream<DocumentSnapshot<Map<String, dynamic>>> users = FirebaseFirestore
      .instance
      .collection('product')
      .doc(productID)
      .snapshots();
  return users;
}
