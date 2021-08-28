import 'dart:async';

import 'package:dstore_flutter/dstore_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:social_network/src/dstore/app_state.dart';
import 'package:social_network/src/dstore/pstates/firebase/auth_ps.dart';
import 'package:social_network/src/dstore/pstates/nav/nav.dart';
import 'package:social_network/src/dstore/selectors/app_selectors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectorBuilder<AppState, AuthPS>(
      selector: AppSelectors.authPS,
      builder: (context, state) {
        var error = state.loginWithGoogle.error;
        error ??= state.loginWithGoogleWeb.error;
        var loading = state.loginWithGoogle.loading;
        if (loading == false) {
          loading = state.loginWithGoogleWeb.loading;
        }

        if (state.user != null) {
          scheduleMicrotask(() => context.dispatch(NavActions.feed()));
          return SizedBox.shrink();
        } else {
          return Center(
            child: Column(
              children: [
                SignInButton(Buttons.Google, onPressed: () {
                  if (kIsWeb) {
                    context.dispatch(AuthPSActions.loginWithGoogleWeb());
                  } else {
                    context.dispatch(AuthPSActions.loginWithGoogle());
                  }
                }),
                if (error != null)
                  Text("Error occured while signing in $error"),
                if (loading) Text("Please wait signInPorcess happening.")
              ],
            ),
          );
        }
      },
    );
  }
}
