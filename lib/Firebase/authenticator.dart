/*
This is the authenticator class
 */

import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  // create an instance of FirebaseAuth which has several methods
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // a method to get the  current user
  User? get currentUser => _firebaseAuth.currentUser;

  // get the authentication state of the user such as whether they are logged in or logged out
  // this is enabled by the use of stream
  // the method usewd for listening for authentication state is "authStateChanges()"
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  // a future method accled when the user needs to reset password
  Future<void> sendPasswordResetEmail({
    required String email,
  }) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }

  // a future method for signing in the user with email and password
  // apply's for a user who has an account already
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  // a future method for creating a new user account with password and gmail
  // it is typically executed at the app's sign up screen
  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  // a future method called when the user wants to sign up
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
