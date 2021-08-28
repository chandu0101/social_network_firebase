// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'firebase.dart';

// **************************************************************************
// FireStoreSchemaGenerator
// **************************************************************************

class PostReference {
  final DocumentReference docRef;
  PostReference(this.docRef);

  static PostReference fromJson(dynamic docRef) =>
      PostReference(docRef as DocumentReference);

  static dynamic toJson(PostReference mref) => mref.docRef;

  static PostReference? fromJsonOptional(dynamic? docRef) =>
      docRef != null ? PostReference(docRef as DocumentReference) : null;

  static dynamic toJsonOptional(PostReference? mref) => mref?.docRef;

  Future<Post?> get([GetOptions? options]) async {
    final snapshot = await docRef.get(options);
    var data = snapshot.data();
    if (data != null) {
      return Post.fromJson(data as Map<String, dynamic>);
    }
  }
}

@JsonSerializable(createFactory: false)
class PostUpdate {
  final String? title;

  final String? text;

  @JsonKey(fromJson: user_fromJson, toJson: user_toJson)
  final DocumentReference<User>? user;

  const PostUpdate({this.title, this.text, this.user});

  Map<String, dynamic> toJson() => _$PostUpdateToJson(this);
}

@JsonSerializable()
class Post {
  final String title;

  final String text;

  @JsonKey(fromJson: user_fromJson, toJson: user_toJson)
  final DocumentReference<User> user;

  @JsonKey(ignore: true)
  _$PostCopyWith<Post> get copyWith =>
      __$PostCopyWithImpl<Post>(this, IdentityFn);

  const Post({required this.title, required this.text, required this.user});

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is Post && o.title == title && o.text == text && o.user == user;
  }

  @override
  int get hashCode => title.hashCode ^ text.hashCode ^ user.hashCode;

  @override
  String toString() =>
      "Post(title: ${this.title}, text: ${this.text}, user: ${this.user})";
}

abstract class $PostCopyWith<O> {
  factory $PostCopyWith(Post value, O Function(Post) then) =
      _$PostCopyWithImpl<O>;
  O call({String title, String text, DocumentReference<User> user});
}

class _$PostCopyWithImpl<O> implements $PostCopyWith<O> {
  final Post _value;
  final O Function(Post) _then;
  _$PostCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? title = dimmutable,
      Object? text = dimmutable,
      Object? user = dimmutable}) {
    return _then(_value.copyWith(
        title: title == dimmutable ? _value.title : title as String,
        text: text == dimmutable ? _value.text : text as String,
        user: user == dimmutable
            ? _value.user
            : user as DocumentReference<User>));
  }
}

abstract class _$PostCopyWith<O> implements $PostCopyWith<O> {
  factory _$PostCopyWith(Post value, O Function(Post) then) =
      __$PostCopyWithImpl<O>;
  O call({String title, String text, DocumentReference<User> user});
}

class __$PostCopyWithImpl<O> extends _$PostCopyWithImpl<O>
    implements _$PostCopyWith<O> {
  __$PostCopyWithImpl(Post _value, O Function(Post) _then)
      : super(_value, (v) => _then(v));

  @override
  Post get _value => super._value;

  @override
  O call(
      {Object? title = dimmutable,
      Object? text = dimmutable,
      Object? user = dimmutable}) {
    return _then(Post(
        title: title == dimmutable ? _value.title : title as String,
        text: text == dimmutable ? _value.text : text as String,
        user: user == dimmutable
            ? _value.user
            : user as DocumentReference<User>));
  }
}

abstract class FireStoreQuery {
  static posts_PostQuery posts_Post() {
    throw Error();
  }
}

abstract class FireStoreGroupQuery {}

class posts_PostQuery {
  posts_PostQuery limit(int limit) {
    throw UnimplementedError('This method is only used at compile');
  }

  posts_PostQuery limitToLast(int limit) {
    throw UnimplementedError('This method is only used at compile');
  }

  posts_PostQuery orderBy(Object field, {bool descending = false}) {
    throw UnimplementedError('This method is only used at compile');
  }

  posts_PostQuery where(
    Object field, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    throw UnimplementedError('This method is only used at compile');
  }

  posts_PostQuery endAtDocument(DocumentSnapshot documentSnapshot) {
    throw UnimplementedError('This method is only used at compile');
  }

  posts_PostQuery startAtDocument(DocumentSnapshot documentSnapshot) {
    throw UnimplementedError('This method is only used at compile');
  }

  posts_PostQuery startAfterDocument(DocumentSnapshot documentSnapshot) {
    throw UnimplementedError('This method is only used at compile');
  }

  posts_PostQuery startAfter(List<Object?> values) {
    throw UnimplementedError('This method is only used at compile');
  }

  posts_PostQuery endAt(List<Object?> values) {
    throw UnimplementedError('This method is only used at compile');
  }

  posts_PostQuery endBefore(List<Object?> values) {
    throw UnimplementedError('This method is only used at compile');
  }

  posts_PostQuery where_title(
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    String? whereIn,
    String? whereNotIn,
  ) {
    throw UnimplementedError('This method is only used at compile');
  }

  posts_PostQuery orderBy_title({bool descending = false}) {
    throw UnimplementedError('This method is only used at compile');
  }

  posts_PostQuery where_text(
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    String? whereIn,
    String? whereNotIn,
  ) {
    throw UnimplementedError('This method is only used at compile');
  }

  posts_PostQuery orderBy_text({bool descending = false}) {
    throw UnimplementedError('This method is only used at compile');
  }
}

class CollectionRefs {
  static final posts = FirebaseFirestore.instance
      .collection('posts')
      .withConverter<Post>(
          fromFirestore: (snapshots, _) => Post.fromJson(snapshots.data()!),
          toFirestore: (post, _) => post.toJson());
}
