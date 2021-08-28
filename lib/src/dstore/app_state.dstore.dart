// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_state.dart';

// **************************************************************************
// AppStateGenerator
// **************************************************************************

class AppState implements AppStateI<AppState> {
  late final AuthPS authPS;
  late final Nav nav;
  late final FeedPS feedPS;
  @override
  AppState copyWithMap(Map<String, dynamic> map) => AppState()
    ..authPS = map.containsKey('authPS') ? map['authPS'] as AuthPS : this.authPS
    ..nav = map.containsKey('nav') ? map['nav'] as Nav : this.nav
    ..feedPS =
        map.containsKey('feedPS') ? map['feedPS'] as FeedPS : this.feedPS;
  @override
  Map<String, PStateModel<dynamic>> toMap() => <String, PStateModel<dynamic>>{
        "authPS": this.authPS,
        "nav": this.nav,
        "feedPS": this.feedPS
      };
}

Store<AppState> createStore(
    {required StoreErrorHandle handleError,
    List<Middleware<AppState>>? middlewares,
    StorageOptions? storageOptions,
    NetworkOptions? networkOptions,
    bool useEqualsComparision = false}) {
  return Store<AppState>(
      internalMeta: <String, PStateMeta>{
        "authPS": AuthPSMeta,
        "nav": NavMeta,
        "feedPS": FeedPSMeta
      },
      stateCreator: () => AppState(),
      appVersion: '1.0.0+1',
      networkOptions: networkOptions,
      middlewares: middlewares,
      handleError: handleError,
      storageOptions: storageOptions,
      useEqualsComparision: useEqualsComparision);
}
