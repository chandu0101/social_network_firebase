import 'package:dstore_flutter/dstore_flutter.dart';
import 'package:flutter/material.dart';

class AppShellNav extends StatelessWidget {
  final Widget child;

  const AppShellNav({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print("Rebuild shell");
    return Overlay(initialEntries: [
      OverlayEntry(builder: (context) {
        return Scaffold(
          body: child,
          bottomNavigationBar: UrlBuilder(builder: (url) {
            return BottomNavigationBar(
              // showSelectedLabels: false,
              // iconSize: 5,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.book), label: "Books"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "Settings"),
                BottomNavigationBarItem(icon: Icon(Icons.tab), label: "Tabs"),
              ],
              currentIndex: getIndex(url),
              onTap: (index) {
                print("Tap index $index");
                if (index == 0) {
                  // context.dispatch(NavStateActions.home());
                } else if (index == 1) {
                  // context.dispatch(NavStateActions.books());
                } else if (index == 2) {
                  // context.dispatch(NavStateActions.settings());
                } else if (index == 3) {
                  // context.dispatch(NavStateActions.tabs());
                }
              },
            );
          }),
        );
      })
    ]);
  }

  int getIndex(Uri uri) {
    final path = uri.path;
    if (path == "/") {
      return 0;
    } else if (path.startsWith("/books")) {
      return 1;
    } else if (path.startsWith("/settings")) {
      return 2;
    } else if (path.startsWith("/tab1")) {
      return 3;
    } else {
      return 0;
    }
  }
}
