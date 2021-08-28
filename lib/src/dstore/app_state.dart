import 'package:dstore/dstore.dart';
import 'package:social_network/src/dstore/pstates/firebase/auth_ps.dart';
import 'package:social_network/src/dstore/pstates/firebase/feed_ps.dart';
import 'package:social_network/src/dstore/pstates/nav/nav.dart';

part "app_state.dstore.dart";

@AppStateAnnotation()
void $_AppState(AuthPS authPS, Nav nav, FeedPS feedPS) {}

final store = createStore(handleError: (error) {
  print("Error $error");
});
