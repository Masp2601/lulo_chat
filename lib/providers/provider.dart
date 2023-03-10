import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class User with ChangeNotifier {
  String id;
  String displayName;
  String photoUrl;
  String email;

  User({
    required this.id,
    required this.displayName,
    required this.photoUrl,
    required this.email,
  });

  factory User.fromFirestore(DocumentSnapshot userDoc) {
    Map userData = userDoc.data as Map;
    return User(
        id: userDoc.id,
        displayName: userData['displayName'],
        photoUrl: userData['photoUrl'],
        email: userData['email']);
  }

  void setFromFirestore(DocumentSnapshot userDoc) {
    Map userData = userDoc.data as Map;
    id = userDoc.id;
    userData['displayName'];
    userData['photoUrl'];
    userData['email'];
    notifyListeners();
  }
}
