import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';


class FirebaseServices {
  final _auth = FirebaseAuth.instance;
  final _googleSignIn = GoogleSignIn();

  Future<String?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential authCredential = GoogleAuthProvider.credential(
            // accessToken: googleSignInAuthentication.accessToken,
            idToken: googleSignInAuthentication.idToken);
        final userCredential = await _auth.signInWithCredential(authCredential);
        return userCredential.user!.getIdToken();
      }
    } on FirebaseAuthException catch (e) {
      print(e.message);
      //throw e;
    }
  }

signOut() async {
  await _auth.signOut();
  await _googleSignIn.signOut();
  

  }
}
