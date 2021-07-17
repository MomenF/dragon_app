import 'dart:core';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Auth {
  //Todo Variables
  final _auth = FirebaseAuth.instance;

// static String signINEmail ;
// static String signUPEmail ;
// static String signUPPassword ;
// static String signINPassword ;



  Future<dynamic> SignIn({String email, String Password}) async {
    try {
      final authResult = await _auth.signInWithEmailAndPassword(
          email: email,
          password: Password
      );
      return authResult;
    }on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}