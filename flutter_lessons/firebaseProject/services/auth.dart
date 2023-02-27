import 'package:alltest/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthSevice {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // create user object based on firebase
  User1? _userFromFirebaseUser(User user) {
    return user != null ? User1(uid: user.uid) : null;
  }

  // sigin anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch (e) {
      print("error is $e");
      return null;
    }
  }
  // sigin email and password

  // register with email & password

  // sigin out
}
