import 'package:dstore_flutter/dstore_flutter.dart';
import 'package:flutter/material.dart';
import 'package:social_network/src/dstore/app_state.dart';
import 'package:social_network/src/dstore/selectors/app_selectors.dart';
import 'package:social_network/src/widgets/desktop_shell.dart';
import 'package:social_network/src/widgets/mobile_tablet_shell.dart';
import 'package:social_network/src/widgets/responsive.dart';
import "package:firebase_core/firebase_core.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: MaterialApp.router(
            routeInformationParser: DStoreRouteInformationParser(),
            routerDelegate: DRouterDelegate(
              selector: AppSelectors.nav,
            )));
  }
}
