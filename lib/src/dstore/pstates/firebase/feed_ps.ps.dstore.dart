// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_ps.dart';

// **************************************************************************
// PStateGenerator
// **************************************************************************

@immutable
class FeedPS extends PStateModel<FeedPS> {
  final StreamField<Post, dynamic> posts;

  final int temp;

  final AsyncActionField addPost;

  _$FeedPSCopyWith<FeedPS> get copyWith =>
      __$FeedPSCopyWithImpl<FeedPS>(this, IdentityFn);

  FeedPS(
      {this.posts = const StreamField<Post, dynamic>(),
      this.temp = 0,
      this.addPost = const AsyncActionField()});

  @override
  FeedPS copyWithMap(Map<String, dynamic> map) => FeedPS(
      posts: map.containsKey("posts")
          ? map["posts"] as StreamField<Post, dynamic>
          : this.posts,
      temp: map.containsKey("temp") ? map["temp"] as int : this.temp,
      addPost: map.containsKey("addPost")
          ? map["addPost"] as AsyncActionField
          : this.addPost);

  Map<String, dynamic> toMap() => <String, dynamic>{
        "posts": this.posts,
        "temp": this.temp,
        "addPost": this.addPost
      };

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is FeedPS &&
        o.posts == posts &&
        o.temp == temp &&
        o.addPost == addPost;
  }

  @override
  int get hashCode => posts.hashCode ^ temp.hashCode ^ addPost.hashCode;

  @override
  String toString() =>
      "FeedPS(posts: ${this.posts}, temp: ${this.temp}, addPost: ${this.addPost})";
}

abstract class $FeedPSCopyWith<O> {
  factory $FeedPSCopyWith(FeedPS value, O Function(FeedPS) then) =
      _$FeedPSCopyWithImpl<O>;
  O call(
      {StreamField<Post, dynamic> posts, int temp, AsyncActionField addPost});
}

class _$FeedPSCopyWithImpl<O> implements $FeedPSCopyWith<O> {
  final FeedPS _value;
  final O Function(FeedPS) _then;
  _$FeedPSCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? posts = dimmutable,
      Object? temp = dimmutable,
      Object? addPost = dimmutable}) {
    return _then(_value.copyWith(
        posts: posts == dimmutable
            ? _value.posts
            : posts as StreamField<Post, dynamic>,
        temp: temp == dimmutable ? _value.temp : temp as int,
        addPost: addPost == dimmutable
            ? _value.addPost
            : addPost as AsyncActionField));
  }
}

abstract class _$FeedPSCopyWith<O> implements $FeedPSCopyWith<O> {
  factory _$FeedPSCopyWith(FeedPS value, O Function(FeedPS) then) =
      __$FeedPSCopyWithImpl<O>;
  O call(
      {StreamField<Post, dynamic> posts, int temp, AsyncActionField addPost});
}

class __$FeedPSCopyWithImpl<O> extends _$FeedPSCopyWithImpl<O>
    implements _$FeedPSCopyWith<O> {
  __$FeedPSCopyWithImpl(FeedPS _value, O Function(FeedPS) _then)
      : super(_value, (v) => _then(v));

  @override
  FeedPS get _value => super._value;

  @override
  O call(
      {Object? posts = dimmutable,
      Object? temp = dimmutable,
      Object? addPost = dimmutable}) {
    return _then(FeedPS(
        posts: posts == dimmutable
            ? _value.posts
            : posts as StreamField<Post, dynamic>,
        temp: temp == dimmutable ? _value.temp : temp as int,
        addPost: addPost == dimmutable
            ? _value.addPost
            : addPost as AsyncActionField));
  }
}

const _FeedPS_FullPath = "/dstore/pstates/firebase/feed_ps/FeedPS";

class FeedPSAddPostResult implements ToMap<FeedPSAddPostResult> {
  final int? temp;

  const FeedPSAddPostResult({this.temp});
  @override
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    if (temp != null) {
      map["temp"] = temp;
    }

    return map;
  }

  @override
  FeedPSAddPostResult copyWithMap(Map<String, dynamic> map) =>
      throw UnimplementedError();
}

abstract class FeedPSActions {
  static Action<FeedPSAddPostResult> addPost(
      {required Post post, Duration? debounce, bool silent = false}) {
    return Action<FeedPSAddPostResult>(
        name: "addPost",
        silent: silent,
        type: _FeedPS_FullPath,
        payload: <String, dynamic>{
          "post": post,
        },
        isAsync: true,
        debounce: debounce);
  }

  static Action<FeedPSAddPostResult> addPostMock(FeedPSAddPostResult mock) {
    return Action<FeedPSAddPostResult>(
        name: "addPost", type: _FeedPS_FullPath, mock: mock);
  }

  static Action<Iterable<dynamic>> posts(
      {required Stream<dynamic> stream,
      bool cancelOnError = false,
      bool appendDataToList = false,
      Iterable<dynamic>? mock}) {
    return Action<Iterable<dynamic>>(
        name: "posts",
        type: _FeedPS_FullPath,
        mock: mock,
        stream: StreamPayload<dynamic>(
            stream: stream,
            cancelOnError: cancelOnError,
            appendDataToList: appendDataToList));
  }

  static Action<Iterable<dynamic>> postsResult(Iterable<dynamic> mock) {
    return Action<Iterable<dynamic>>(
      name: "posts",
      type: _FeedPS_FullPath,
      mock: mock,
    );
  }
}

Future<dynamic> FeedPS_AsyncReducer(
    dynamic _DStoreState, Action _DstoreAction) async {
  _DStoreState = _DStoreState as FeedPS;
  final name = _DstoreAction.name;
  switch (name) {
    case "addPost":
      {
        final _DstoreActionPayload = _DstoreAction.payload!;
        final post = _DstoreActionPayload["post"] as Post;

        var _DStore_temp = _DStoreState.temp;
        await CollectionRefs.posts.add(post);
        _DStore_temp = 1;
        return _DStoreState.copyWith(temp: _DStore_temp);
      }

    default:
      {
        return _DStoreState;
      }
  }
}

FeedPS FeedPS_DS() => FeedPS(
    posts: StreamField<Post, dynamic>(), temp: 0, addPost: AsyncActionField());

final FeedPSMeta = PStateMeta<FeedPS>(
    type: _FeedPS_FullPath, aReducer: FeedPS_AsyncReducer, ds: FeedPS_DS);
