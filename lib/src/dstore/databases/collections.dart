import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dstore/dstore.dart';
import 'package:dstore_firebase/firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';

@collection(name: "posts")
abstract class Post {
  late final String title;
  late final String text;
  @JsonKey(fromJson: user_fromJson, toJson: user_toJson)
  late DocumentReference<User> user;
}

// @override
DocumentReference<User> user_fromJson(DocumentReference<User> json) {
  return json;
}

// @override
DocumentReference<User>? user_toJson(DocumentReference<User>? object) {
  return object;
}

abstract class Collections implements Post {}
