import 'package:dstore/dstore.dart';
import 'package:social_network/src/dstore/databases/collections.dart';
import "package:cloud_firestore/cloud_firestore.dart";
import 'package:dstore_firebase/firebase.dart';
import "package:firebase_auth/firebase_auth.dart";
part "firebase.dstore.dart";
part "firebase.g.dart";

@FireStoreSchema(
  rulesPath: "./securority-rules",
)
class FSchema {
  late Collections collections;
}

// final usersRef = FirebaseFirestore.instance
//     .collection('users')
//     .withConverter<User>(
//         fromFirestore: (snapshots, _) => Post.fromJson(snapshots.data()!),
//         toFirestore: (post, _) => post.toJson());
