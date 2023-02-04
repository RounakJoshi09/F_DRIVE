import 'package:f_drive/util/Collections.dart';
import 'package:f_drive/util/Functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();
  Rx<User?> user = Rx<User?>(FirebaseAuth.instance.currentUser);
  @override
  void onInit() {
    user.bindStream(auth.authStateChanges());
    super.onInit();
  }

  login() async {
    GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      GoogleSignInAuthentication googleAuth =
          await googleSignInAccount.authentication;
      AuthCredential credential = await GoogleAuthProvider.credential(
          idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
      UserCredential? userCredential =
          await auth.signInWithCredential(credential);
      if (userCredential != null) {
        User user = userCredential.user!;

        Collections.userCollection.doc(user.uid).set({
          "username": user.displayName,
          "email": user.email,
          "profilePic": user.photoURL,
          "uid": user.uid,
          "created_at": DateTime.now(),
        });
      }
    }
  }
}
