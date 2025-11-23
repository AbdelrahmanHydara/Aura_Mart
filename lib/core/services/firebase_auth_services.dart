import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shopx/core/errors/exceptions.dart';

class FirebaseAuthService {

  // Create User with Email and Password
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final credential =
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await credential.user?.updateDisplayName(name);
      if (credential.user != null) {
        return credential.user!;
      } else {
        throw CustomException(message: 'Registration successful, but user object is null.');
      }
    } on FirebaseAuthException catch (e) {
      log("Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()} and code is ${e.code}");
      if (e.code == 'weak-password') {
        throw CustomException(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: 'The account already exists for that email.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'The network error occurred.');
      } else {
        throw CustomException(
            message: 'An error occurred during authentication: ${e.code}.');
      }
    } catch (e) {
      log("Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}");
      throw CustomException(
          message: 'An unexpected error occurred. Please Try again later.');
    }
  }

  // Login User
  Future<User> loginUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential =
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-credential') {
        throw CustomException(message: 'Email or password is incorrect for that user.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'The network error occurred.');
      } else {
        log('An error occurred during authentication: ${e.code}.');
        throw CustomException(
            message: 'An error occurred during authentication: ${e.code}.');
      }
    } catch (e) {
      log("Exception in FirebaseAuthService.loginUserWithEmailAndPassword: ${e.toString()}");
      throw CustomException(
          message: 'An unexpected error occurred. Please Try again later.');
    }
  }

  // Create User with Google
  Future<User> createUserWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
    await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }

  // Create User with Facebook
  Future<UserCredential> createUserWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();
    final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

  // Logout User
  Future<void> logoutUser() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      log("Exception in FirebaseAuthService.logoutUser: ${e.toString()}");
      throw CustomException(
          message: 'An unexpected error occurred during logout. Please Try again later.');
    }
  }

  // Delete User
  Future<void> deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }
}