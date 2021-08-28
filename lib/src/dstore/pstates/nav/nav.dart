import 'package:dstore/dstore.dart';
import 'package:dstore_flutter/dstore_flutter.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:social_network/src/screens/feed/feed_screen.dart';
import 'package:social_network/src/screens/login/login_screen.dart';
import 'package:social_network/src/screens/settings/settings_screen.dart';
import 'package:social_network/src/screens/unknown/unknown_screen.dart';
import 'package:social_network/src/screens/user/user_screen.dart';
import 'package:social_network/src/widgets/desktop_shell.dart';
import 'package:social_network/src/widgets/mobile_tablet_shell.dart';
import 'package:social_network/src/widgets/responsive.dart';
part 'nav.ps.dstore.dart';

@PState(nav: true)
class $_Nav extends NavStateI {
  @Url("/login")
  void login() {
    this.page =
        MaterialPage(key: ValueKey("login_screen"), child: LoginScreen());
  }

  @Url("/")
  void feed() {
    this.page = MaterialPage(
        key: ValueKey("feed_screen"),
        child: Responsive(
            desktop: DesktopShell(
              child: FeedScreen(),
            ),
            mobileOrTablet: MobileTabletShell(child: FeedScreen())));
  }

  @Url("/user")
  void user() {
    this.page = MaterialPage(key: ValueKey("user-screen"), child: UserScreen());
  }

  @Url("/settings")
  void settings() {
    this.page =
        MaterialPage(key: ValueKey("settings-screen"), child: SettingScreen());
  }

  @Url("/notfound")
  void notFound() {
    this.page =
        MaterialPage(key: ValueKey("not_found"), child: UnknownScreen());
  }

  @override
  AuthMeta authMeta(NavCommonI navState) {
    return AuthMeta(
        action: NavActions.login(), isAuthenticated: (state) => false);
  }

  @override
  Action notFoundAction(Uri uri) {
    return NavActions.notFound();
  }
}
