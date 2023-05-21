import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

import 'package:google_sign_in/google_sign_in.dart';

import '../../../../core/models/user_model.dart';
import '../domain/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  // @override
  // Future<UserCredential> signInWithFacebook() async {
  //   // Trigger the sign-in flow
  //   final LoginResult loginResult = await FacebookAuth.instance.login();

  //   // Create a credential from the access token
  //   final OAuthCredential facebookAuthCredential =
  //       FacebookAuthProvider.credential(loginResult.accessToken!.token);

  //   // Once signed in, return the UserCredential
  //   return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  // }

  @override
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Future<UserCredential> userSignIn({
    required String email,
    required String password,
  }) async {
    return await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<UserCredential> userSignUp({
    required String email,
    required String password,
  }) async {
    return await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> firestoreCreateUSer({
    required String email,
    required String username,
    required String uId,
  }) async {
    UserModel userModel = UserModel(
      email: email,
      uId: uId,
      username: username,
    );
    await FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .set(userModel.toJson());
  }
}
