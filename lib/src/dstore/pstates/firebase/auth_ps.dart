import 'package:dstore/dstore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:social_network/src/dstore/databases/collections.dart';
part 'auth_ps.ps.dstore.dart';

@PState()
class $_AuthPS {
  UserCredential? user;

  void loginWithGoogle() async {
    // Trigger the authentication flow
    final googleUser = await GoogleSignIn().signIn();

    if (googleUser != null) {
      // Obtain the auth details from the request
      final googleAuth = await googleUser.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      // Once signed in, return the UserCredential
      final cred = await FirebaseAuth.instance.signInWithCredential(credential);
      this.user = cred;
    }
  }

  void loginWithGoogleWeb() async {
    final googleProvider = GoogleAuthProvider();

    googleProvider
        .addScope('https://www.googleapis.com/auth/contacts.readonly');
    googleProvider.setCustomParameters({'login_hint': 'user@example.com'});

    // Once signed in, return the UserCredential
    final cred = await FirebaseAuth.instance.signInWithPopup(googleProvider);
    this.user = cred;
  }
}
