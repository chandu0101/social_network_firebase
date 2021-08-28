import 'package:dstore/dstore.dart';
import 'package:social_network/src/dstore/app_state.dart';
import 'package:social_network/src/dstore/databases/firebase.dart';
import 'package:social_network/src/dstore/pstates/firebase/auth_ps.dart';
import 'package:social_network/src/dstore/pstates/nav/nav.dart';
part 'app_selectors.dstore.dart';

@Selectors()
class $_AppSelectors {
  static AuthPS authPS(AppState state) => state.authPS;
  static Nav nav(AppState state) => state.nav;
  static StreamField<Post, dynamic> postFeed(AppState state) =>
      state.feedPS.posts;
}
