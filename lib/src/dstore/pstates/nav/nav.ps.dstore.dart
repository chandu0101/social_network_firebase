// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nav.dart';

// **************************************************************************
// PStateGenerator
// **************************************************************************

class Nav extends NavStateI<Nav> with PStateStoreDepsMixin, NavCommonI {
  final Page? page;

  final BeforeLeaveFn? beforeLeave;

  final NavConfigMeta meta;

  final NavOptions? navOptions;

  @override
  AuthMeta authMeta(NavCommonI navState) {
    return AuthMeta(
        action: NavActions.login(), isAuthenticated: (state) => false);
  }

  @override
  Action notFoundAction(Uri uri) {
    return NavActions.notFound();
  }

  @override
  Action fallBackNestedStackNonInitializationAction(NavCommonI navState) {
    return NavActions.fallBackNestedStackNonInitializationAction2(
        navState: navState);
  }

  _$NavCopyWith<Nav> get copyWith => __$NavCopyWithImpl<Nav>(this, IdentityFn);

  Nav({this.page, this.beforeLeave, NavConfigMeta? meta, this.navOptions})
      : meta = meta ?? NavConfigMeta();

  @override
  Nav copyWithMap(Map<String, dynamic> map) => Nav(
      page: map.containsKey("page") ? map["page"] as Page? : this.page,
      beforeLeave: map.containsKey("beforeLeave")
          ? map["beforeLeave"] as BeforeLeaveFn?
          : this.beforeLeave,
      meta: map.containsKey("meta") ? map["meta"] as NavConfigMeta : this.meta,
      navOptions: map.containsKey("navOptions")
          ? map["navOptions"] as NavOptions?
          : this.navOptions);

  Map<String, dynamic> toMap() => <String, dynamic>{
        "page": this.page,
        "beforeLeave": this.beforeLeave,
        "meta": this.meta,
        "navOptions": this.navOptions
      };

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is Nav &&
        o.page == page &&
        o.beforeLeave == beforeLeave &&
        o.meta == meta &&
        o.navOptions == navOptions;
  }

  @override
  int get hashCode =>
      page.hashCode ^
      beforeLeave.hashCode ^
      meta.hashCode ^
      navOptions.hashCode;

  @override
  String toString() =>
      "Nav(page: ${this.page}, beforeLeave: ${this.beforeLeave}, meta: ${this.meta}, navOptions: ${this.navOptions})";
}

abstract class $NavCopyWith<O> {
  factory $NavCopyWith(Nav value, O Function(Nav) then) = _$NavCopyWithImpl<O>;
  O call(
      {Page? page,
      BeforeLeaveFn? beforeLeave,
      NavConfigMeta meta,
      NavOptions? navOptions});
}

class _$NavCopyWithImpl<O> implements $NavCopyWith<O> {
  final Nav _value;
  final O Function(Nav) _then;
  _$NavCopyWithImpl(this._value, this._then);

  @override
  O call(
      {Object? page = dimmutable,
      Object? beforeLeave = dimmutable,
      Object? meta = dimmutable,
      Object? navOptions = dimmutable}) {
    return _then(_value.copyWith(
        page: page == dimmutable ? _value.page : page as Page?,
        beforeLeave: beforeLeave == dimmutable
            ? _value.beforeLeave
            : beforeLeave as BeforeLeaveFn?,
        meta: meta == dimmutable ? _value.meta : meta as NavConfigMeta,
        navOptions: navOptions == dimmutable
            ? _value.navOptions
            : navOptions as NavOptions?));
  }
}

abstract class _$NavCopyWith<O> implements $NavCopyWith<O> {
  factory _$NavCopyWith(Nav value, O Function(Nav) then) =
      __$NavCopyWithImpl<O>;
  O call(
      {Page? page,
      BeforeLeaveFn? beforeLeave,
      NavConfigMeta meta,
      NavOptions? navOptions});
}

class __$NavCopyWithImpl<O> extends _$NavCopyWithImpl<O>
    implements _$NavCopyWith<O> {
  __$NavCopyWithImpl(Nav _value, O Function(Nav) _then)
      : super(_value, (v) => _then(v));

  @override
  Nav get _value => super._value;

  @override
  O call(
      {Object? page = dimmutable,
      Object? beforeLeave = dimmutable,
      Object? meta = dimmutable,
      Object? navOptions = dimmutable}) {
    return _then(Nav(
        page: page == dimmutable ? _value.page : page as Page?,
        beforeLeave: beforeLeave == dimmutable
            ? _value.beforeLeave
            : beforeLeave as BeforeLeaveFn?,
        meta: meta == dimmutable ? _value.meta : meta as NavConfigMeta,
        navOptions: navOptions == dimmutable
            ? _value.navOptions
            : navOptions as NavOptions?));
  }
}

const _Nav_FullPath = "/dstore/pstates/nav/nav/Nav";
dynamic Nav_SyncReducer(dynamic _DStoreState, Action _DstoreAction) {
  _DStoreState = _DStoreState as Nav;
  final name = _DstoreAction.name;
  switch (name) {
    case "login":
      {
        final _DstoreActionPayload = _DstoreAction.payload;
        var _DStore_page = _DStoreState.page;
        _DStore_page =
            MaterialPage(key: ValueKey("login_screen"), child: LoginScreen());
        var newState =
            _DStoreState.copyWith(page: _DStore_page, meta: NavConfigMeta());

        newState.dontTouchMe = _DStoreState.dontTouchMe;
        newState.dontTouchMe.url = '/login';

        return newState;
      }

    case "feed":
      {
        final _DstoreActionPayload = _DstoreAction.payload;
        var _DStore_page = _DStoreState.page;
        _DStore_page = MaterialPage(
            key: ValueKey("feed_screen"),
            child: Responsive(
                desktop: DesktopShell(child: FeedScreen()),
                mobileOrTablet: MobileTabletShell(child: FeedScreen())));
        var newState =
            _DStoreState.copyWith(page: _DStore_page, meta: NavConfigMeta());

        newState.dontTouchMe = _DStoreState.dontTouchMe;
        newState.dontTouchMe.url = '/';

        return newState;
      }

    case "user":
      {
        final _DstoreActionPayload = _DstoreAction.payload;
        var _DStore_page = _DStoreState.page;
        _DStore_page =
            MaterialPage(key: ValueKey("user-screen"), child: UserScreen());
        var newState =
            _DStoreState.copyWith(page: _DStore_page, meta: NavConfigMeta());

        newState.dontTouchMe = _DStoreState.dontTouchMe;
        newState.dontTouchMe.url = '/user';

        return newState;
      }

    case "settings":
      {
        final _DstoreActionPayload = _DstoreAction.payload;
        var _DStore_page = _DStoreState.page;
        _DStore_page = MaterialPage(
            key: ValueKey("settings-screen"), child: SettingScreen());
        var newState =
            _DStoreState.copyWith(page: _DStore_page, meta: NavConfigMeta());

        newState.dontTouchMe = _DStoreState.dontTouchMe;
        newState.dontTouchMe.url = '/settings';

        return newState;
      }

    case "notFound":
      {
        final _DstoreActionPayload = _DstoreAction.payload;
        var _DStore_page = _DStoreState.page;
        _DStore_page =
            MaterialPage(key: ValueKey("not_found"), child: UnknownScreen());
        var newState =
            _DStoreState.copyWith(page: _DStore_page, meta: NavConfigMeta());

        newState.dontTouchMe = _DStoreState.dontTouchMe;
        newState.dontTouchMe.url = '/notfound';

        return newState;
      }

    case "fallBackNestedStackNonInitializationAction2":
      {
        final _DstoreActionPayload = _DstoreAction.payload!;
        final navState = _DstoreActionPayload["navState"] as NavStateI;
        var _DStore_meta = _DStoreState.meta;
        _DStore_meta = navState.meta;
        final newState = _DStoreState.copyWith(meta: _DStore_meta);
        newState.dontTouchMe = _DStoreState.dontTouchMe;
        return newState;
      }

    default:
      {
        return _DStoreState;
      }
  }
}

Nav Nav_DS() {
  final state = Nav(
      page: null, beforeLeave: null, meta: NavConfigMeta(), navOptions: null);

  state.dontTouchMe.staticMeta = {
    '/login': NavUrlMeta(
        urlToAction: (Uri uri, Dispatch dispatch) {
          return dispatch(NavActions.login());
        },
        url: '/login',
        isProtected: false),
    '/': NavUrlMeta(
        urlToAction: (Uri uri, Dispatch dispatch) {
          return dispatch(NavActions.feed());
        },
        url: '/',
        isProtected: false),
    '/user': NavUrlMeta(
        urlToAction: (Uri uri, Dispatch dispatch) {
          return dispatch(NavActions.user());
        },
        url: '/user',
        isProtected: false),
    '/settings': NavUrlMeta(
        urlToAction: (Uri uri, Dispatch dispatch) {
          return dispatch(NavActions.settings());
        },
        url: '/settings',
        isProtected: false),
    '/notfound': NavUrlMeta(
        urlToAction: (Uri uri, Dispatch dispatch) {
          return dispatch(NavActions.notFound());
        },
        url: '/notfound',
        isProtected: false)
  };
  state.dontTouchMe.dynamicMeta = {};
  state.dontTouchMe.typeName = '';
  state.dontTouchMe.initialSetup = null;
  state.dontTouchMe.historyMode = HistoryMode.tabs;

  return state;
}

final NavMeta =
    PStateMeta<Nav>(type: _Nav_FullPath, reducer: Nav_SyncReducer, ds: Nav_DS);

abstract class NavActions {
  static Action<dynamic> login({bool silent = false, NavOptions? navOptions}) {
    return Action<dynamic>(
        name: "login",
        silent: silent,
        nav: NavPayload(
            navOptions: navOptions, rawUrl: '/login', isProtected: false),
        type: _Nav_FullPath,
        payload: <String, dynamic>{},
        isAsync: false);
  }

  static Action<dynamic> feed({bool silent = false, NavOptions? navOptions}) {
    return Action<dynamic>(
        name: "feed",
        silent: silent,
        nav:
            NavPayload(navOptions: navOptions, rawUrl: '/', isProtected: false),
        type: _Nav_FullPath,
        payload: <String, dynamic>{},
        isAsync: false);
  }

  static Action<dynamic> user({bool silent = false, NavOptions? navOptions}) {
    return Action<dynamic>(
        name: "user",
        silent: silent,
        nav: NavPayload(
            navOptions: navOptions, rawUrl: '/user', isProtected: false),
        type: _Nav_FullPath,
        payload: <String, dynamic>{},
        isAsync: false);
  }

  static Action<dynamic> settings(
      {bool silent = false, NavOptions? navOptions}) {
    return Action<dynamic>(
        name: "settings",
        silent: silent,
        nav: NavPayload(
            navOptions: navOptions, rawUrl: '/settings', isProtected: false),
        type: _Nav_FullPath,
        payload: <String, dynamic>{},
        isAsync: false);
  }

  static Action<dynamic> notFound(
      {bool silent = false, NavOptions? navOptions}) {
    return Action<dynamic>(
        name: "notFound",
        silent: silent,
        nav: NavPayload(
            navOptions: navOptions, rawUrl: '/notfound', isProtected: false),
        type: _Nav_FullPath,
        payload: <String, dynamic>{},
        isAsync: false);
  }

  static Action<dynamic> fallBackNestedStackNonInitializationAction2(
      {required NavCommonI navState,
      bool silent = false,
      NavOptions? navOptions}) {
    return Action<dynamic>(
        name: "fallBackNestedStackNonInitializationAction2",
        silent: silent,
        nav: NavPayload(navOptions: navOptions, isProtected: false),
        type: _Nav_FullPath,
        payload: <String, dynamic>{"navState": navState},
        isAsync: false);
  }
}
