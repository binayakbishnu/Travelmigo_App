import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_auth_web/firebase_auth_web.dart';

// class AuthService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   //anon sign in
//   Future signInAnon() async {
//     try {
//       UserCredential result = await _auth.signInAnonymously();
//       User user = result.user;
//       return user;
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }

//   //email/password sing in

//   //register with email/password

//   //signout
// }

Future<bool> logIn(String email, String password) async {
  try {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return true;
  } catch (e) {
    print(e.toString());
    return false;
  }
}

Future<bool> signUp(String email, String password) async {
  try {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    return true;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('Password is too weak');
    } else if (e.code == 'email-already-in-use') {
      print('Email already exists');
    }
    return false;
  } catch (e) {
    print(e.toString());
    return false;
  }
}
