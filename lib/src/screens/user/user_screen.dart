import 'package:dstore_flutter/dstore_flutter.dart';
import 'package:flutter/material.dart';
import 'package:social_network/src/dstore/app_state.dart';
import 'package:social_network/src/dstore/pstates/firebase/auth_ps.dart';
import 'package:social_network/src/dstore/selectors/app_selectors.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Profile"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.edit))],
      ),
      body: SelectorBuilder<AppState, AuthPS>(
        selector: AppSelectors.authPS,
        builder: (context, state) {
          final user = state.user!.user!;
          final url = user.photoURL;
          final name = user.displayName;
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                if (url != null)
                  CircleAvatar(
                    backgroundImage: NetworkImage(url),
                  )
                else
                  CircleAvatar(
                    backgroundColor: Colors.amberAccent,
                    child: Text(name ?? ""),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
