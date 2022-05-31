import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> createuser(String userName, String email, int phoneNumber) async {
  CollectionReference users = FirebaseFirestore.instance.collection('Users');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  users.doc(uid).set({
    'uid': uid,
    'username': userName,
    'email': email,
    'phoneNumber': phoneNumber
  });
  return;
}

Future<void> creatStore(
    String storeName, String storeMail, int location) async {
  CollectionReference users = FirebaseFirestore.instance.collection('Store');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  users.doc(uid).set({
    'storeid': uid,
    'storename': storeName,
    'email': storeMail,
    'location': location
  });
  return;
}

Future<void> creatproduct(
    String productName, int price, String description, String image) async {
  CollectionReference users = FirebaseFirestore.instance.collection('Users');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  users.doc(uid).set({
    'creatorId': uid,
    'productname': productName,
    'price': price,
    'description': description,
    'image': image
  });
  return;
}
