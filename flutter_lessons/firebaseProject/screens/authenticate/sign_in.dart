import 'package:alltest/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthSevice _auth = AuthSevice();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[100],
        appBar: AppBar(
            backgroundColor: Colors.brown[400],
            elevation: 1,
            title: Text("sign in for my app")),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.9),
            child: TextButton(
                onPressed: () async {
                  dynamic result = await _auth.signInAnon();
                  if (result == null) {
                    print("error in sign in");
                  } else {
                    print("sign in");
                    print(result.uid);
                  }
                },
                child: Text("sing in anon"))));
  }
}
