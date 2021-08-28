import 'package:dstore_flutter/dstore_flutter.dart';
import 'package:flutter/material.dart';
import 'package:social_network/src/dstore/pstates/nav/nav.dart';

class DesktopShell extends StatelessWidget {
  final Widget child;
  const DesktopShell({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 300,
            child: DesktopNav(),
          ),
          Expanded(child: child)
        ],
      ),
    );
  }
}

class DesktopNav extends StatelessWidget {
  const DesktopNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UrlBuilder(
      builder: (Uri uri) {
        return ListView(children: [
          ListTile(
            leading: Icon(Icons.feed),
            title: Text("Feed"),
            onTap: () {
              context.dispatch(NavActions.feed());
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text("User"),
            onTap: () {
              context.dispatch(NavActions.user());
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              context.dispatch(NavActions.settings());
            },
          ),
        ]);
      },
    );
  }
}
