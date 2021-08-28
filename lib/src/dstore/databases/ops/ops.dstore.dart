// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'ops.dart';

// **************************************************************************
// FireStoreOpsGenerator
// **************************************************************************

class AppFireOps {
  static feed(DocumentReference<User> user2) {
    return FirebaseFirestore.instance
        .collection('posts')
        .withConverter<Post>(
            fromFirestore: (snapshots, _) => Post.fromJson(snapshots.data()!),
            toFirestore: (post, _) => post.toJson())
        .where("user", isEqualTo: user2);
  }
}
