import 'package:dstore/dstore.dart';
import 'package:social_network/src/dstore/databases/firebase.dart';
import "package:cloud_firestore/cloud_firestore.dart";
import "package:firebase_auth/firebase_auth.dart";
part "ops.dstore.dart";

@FireStoreOps()
class $_AppFireOps {
  final feed = FireStoreQuery.posts_Post().where("user",
      isEqualTo: FireStoreDynamicVariable(
          name: "user2", type: "DocumentReference<User>"));
}
