// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
 
//  ValueNotifier<AuthServices> authServive = ValueNotifier(AuthServices());

// class AuthServices {
//   final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
//   User? get currentUser => firebaseAuth.currentUser;
//   Stream<User?> get authStateChanges => firebaseAuth.authStateChanges();
//   Future<UserCredential>SignIn({
//     required String email,required String password,
//   })async{
//     return await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
//   }

//  Future<UserCredential>createAxxount({
//     required String email,required String password,
//   })async{
//     return await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Get current user
  User? get currentUser => _auth.currentUser;

  // Listen to auth state changes
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  // Sign in
  Future<UserCredential> signIn({
    required String email,
    required String password,
  }) async {
    return await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  // Create account
  Future<UserCredential> createAccount({
    required String email,
    required String password,
  }) async {
    return await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  // Sign out
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
