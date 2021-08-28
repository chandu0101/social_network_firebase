// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_ps.dart';

// **************************************************************************
// PStateGenerator
// **************************************************************************

@immutable
class AuthPS extends PStateModel<AuthPS> {
  final UserCredential? user;

  final AsyncActionField loginWithGoogle;

  final AsyncActionField loginWithGoogleWeb;

  _$AuthPSCopyWith<AuthPS> get copyWith =>
      __$AuthPSCopyWithImpl<AuthPS>(this, IdentityFn);

  AuthPS(
      {this.user,
      this.loginWithGoogle = const AsyncActionField(),
      this.loginWithGoogleWeb = const AsyncActionField()});

  @override
  AuthPS copyWithMap(Map<String, dynamic> map) => AuthPS(
      user:
          map.containsKey("user") ? map["user"] as UserCredential? : this.user,
      loginWithGoogle: map.containsKey("loginWithGoogle")
          ? map["loginWithGoogle"] as AsyncActionField
          : this.loginWithGoogle,
      loginWithGoogleWeb: map.containsKey("loginWithGoogleWeb")
          ? map["loginWithGoogleWeb"] as AsyncActionField
          : this.loginWithGoogleWeb);

  Map<String, dynamic> toMap() => <String, dynamic>{
        "user": this.user,
        "loginWithGoogle": this.loginWithGoogle,
        "loginWithGoogleWeb": this.loginWithGoogleWeb
      };

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is AuthPS &&
        o.user == user &&
        o.loginWithGoogle == loginWithGoogle &&
        o.loginWithGoogleWeb == loginWithGoogleWeb;
  }

  @override
  int get hashCode =>
      user.hashCode ^ loginWithGoogle.hashCode ^ loginWithGoogleWeb.hashCode;

  @override
  String toString() =>
      "AuthPS(user: ${this.user}, loginWithGoogle: ${this.loginWithGoogle}, loginWithGoogleWeb: ${this.loginWithGoogleWeb})";
}

abstract class $AuthPSCopyWith<O> {
  factory $AuthPSCopyWith(AuthPS value, O Function(AuthPS) then) =
      _$AuthPSCopyWithImpl<O>;
  O call(
      {UserCredential? user,
      AsyncActionField loginWithGoogle,
      AsyncActionField loginWithGoogleWeb});
}

class _$AuthPSCopyWithImpl<O> implements $AuthPSCopyWith<O> {
  final AuthPS _value;
  final O Function(AuthPS) _then;
  _$AuthPSCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? user = dimmutable,
      Object? loginWithGoogle = dimmutable,
      Object? loginWithGoogleWeb = dimmutable}) {
    return _then(_value.copyWith(
        user: user == dimmutable ? _value.user : user as UserCredential?,
        loginWithGoogle: loginWithGoogle == dimmutable
            ? _value.loginWithGoogle
            : loginWithGoogle as AsyncActionField,
        loginWithGoogleWeb: loginWithGoogleWeb == dimmutable
            ? _value.loginWithGoogleWeb
            : loginWithGoogleWeb as AsyncActionField));
  }
}

abstract class _$AuthPSCopyWith<O> implements $AuthPSCopyWith<O> {
  factory _$AuthPSCopyWith(AuthPS value, O Function(AuthPS) then) =
      __$AuthPSCopyWithImpl<O>;
  O call(
      {UserCredential? user,
      AsyncActionField loginWithGoogle,
      AsyncActionField loginWithGoogleWeb});
}

class __$AuthPSCopyWithImpl<O> extends _$AuthPSCopyWithImpl<O>
    implements _$AuthPSCopyWith<O> {
  __$AuthPSCopyWithImpl(AuthPS _value, O Function(AuthPS) _then)
      : super(_value, (v) => _then(v));

  @override
  AuthPS get _value => super._value;

  @override
  O call(
      {Object? user = dimmutable,
      Object? loginWithGoogle = dimmutable,
      Object? loginWithGoogleWeb = dimmutable}) {
    return _then(AuthPS(
        user: user == dimmutable ? _value.user : user as UserCredential?,
        loginWithGoogle: loginWithGoogle == dimmutable
            ? _value.loginWithGoogle
            : loginWithGoogle as AsyncActionField,
        loginWithGoogleWeb: loginWithGoogleWeb == dimmutable
            ? _value.loginWithGoogleWeb
            : loginWithGoogleWeb as AsyncActionField));
  }
}

const _AuthPS_FullPath = "/dstore/pstates/firebase/auth_ps/AuthPS";

class AuthPSLoginWithGoogleResult
    implements ToMap<AuthPSLoginWithGoogleResult> {
  final Optional<UserCredential?> user;

  const AuthPSLoginWithGoogleResult({this.user = optionalDefault});
  @override
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    if (user != optionalDefault) {
      map["user"] = user.value;
    }

    return map;
  }

  @override
  AuthPSLoginWithGoogleResult copyWithMap(Map<String, dynamic> map) =>
      throw UnimplementedError();
}

class AuthPSLoginWithGoogleWebResult
    implements ToMap<AuthPSLoginWithGoogleWebResult> {
  final Optional<UserCredential?> user;

  const AuthPSLoginWithGoogleWebResult({this.user = optionalDefault});
  @override
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    if (user != optionalDefault) {
      map["user"] = user.value;
    }

    return map;
  }

  @override
  AuthPSLoginWithGoogleWebResult copyWithMap(Map<String, dynamic> map) =>
      throw UnimplementedError();
}

abstract class AuthPSActions {
  static Action<AuthPSLoginWithGoogleResult> loginWithGoogle(
      {Duration? debounce, bool silent = false}) {
    return Action<AuthPSLoginWithGoogleResult>(
        name: "loginWithGoogle",
        silent: silent,
        type: _AuthPS_FullPath,
        isAsync: true,
        debounce: debounce);
  }

  static Action<AuthPSLoginWithGoogleResult> loginWithGoogleMock(
      AuthPSLoginWithGoogleResult mock) {
    return Action<AuthPSLoginWithGoogleResult>(
        name: "loginWithGoogle", type: _AuthPS_FullPath, mock: mock);
  }

  static Action<AuthPSLoginWithGoogleWebResult> loginWithGoogleWeb(
      {Duration? debounce, bool silent = false}) {
    return Action<AuthPSLoginWithGoogleWebResult>(
        name: "loginWithGoogleWeb",
        silent: silent,
        type: _AuthPS_FullPath,
        isAsync: true,
        debounce: debounce);
  }

  static Action<AuthPSLoginWithGoogleWebResult> loginWithGoogleWebMock(
      AuthPSLoginWithGoogleWebResult mock) {
    return Action<AuthPSLoginWithGoogleWebResult>(
        name: "loginWithGoogleWeb", type: _AuthPS_FullPath, mock: mock);
  }
}

Future<dynamic> AuthPS_AsyncReducer(
    dynamic _DStoreState, Action _DstoreAction) async {
  _DStoreState = _DStoreState as AuthPS;
  final name = _DstoreAction.name;
  switch (name) {
    case "loginWithGoogle":
      {
        final _DstoreActionPayload = _DstoreAction.payload;
        var _DStore_user = _DStoreState.user;
        final googleUser = await GoogleSignIn().signIn();
        if (googleUser != null) {
          final googleAuth = await googleUser.authentication;
          final credential = GoogleAuthProvider.credential(
              accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
          final cred =
              await FirebaseAuth.instance.signInWithCredential(credential);
          _DStore_user = cred;
        }

        return _DStoreState.copyWith(user: _DStore_user);
      }

    case "loginWithGoogleWeb":
      {
        final _DstoreActionPayload = _DstoreAction.payload;
        var _DStore_user = _DStoreState.user;
        final googleProvider = GoogleAuthProvider();
        googleProvider
            .addScope('https://www.googleapis.com/auth/contacts.readonly');
        googleProvider.setCustomParameters({'login_hint': 'user@example.com'});
        final cred =
            await FirebaseAuth.instance.signInWithPopup(googleProvider);
        _DStore_user = cred;
        return _DStoreState.copyWith(user: _DStore_user);
      }

    default:
      {
        return _DStoreState;
      }
  }
}

AuthPS AuthPS_DS() => AuthPS(
    user: null,
    loginWithGoogle: AsyncActionField(),
    loginWithGoogleWeb: AsyncActionField());

final AuthPSMeta = PStateMeta<AuthPS>(
    type: _AuthPS_FullPath, aReducer: AuthPS_AsyncReducer, ds: AuthPS_DS);
