import 'package:go_router/go_router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:smk_duta_kencana/router/RouteUtils.dart';

class AuthController extends ChangeNotifier {
  bool isLoading = false;
  FirebaseAuth auth = FirebaseAuth.instance;
  Stream<User?> get streamAuthStatus => auth.authStateChanges();
  void register(String email, String password, BuildContext context) async {
    isLoading = true;
    notifyListeners();
    try {
      await auth.createUserWithEmailAndPassword(
        
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      isLoading = false;
      notifyListeners();
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  void login(String email, String password, BuildContext context) async {
    isLoading = true;
    notifyListeners();
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      isLoading = false;
      notifyListeners();

      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.code),
            backgroundColor: Colors.red,
          ),
        );
        throw Exception(e.code);
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  void logout() async {
    await FirebaseAuth.instance.signOut();
  }

  void showSnackBar(BuildContext context, String s) {
    Text(s);
  }
}
