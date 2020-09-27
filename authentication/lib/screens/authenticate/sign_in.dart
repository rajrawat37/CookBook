import 'package:flutter/material.dart';
import 'package:authentication/services/auth.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  
  final AuthService _authen = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar( 
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign in to MedBot'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: RaisedButton(
            child: Text('Sign In'),
            onPressed: () async {
              dynamic result = await _authen.signInAnon();
              if (result == null)
                print('Error Sign In');
              else
                print('Signed In');
            }),
      ),
    );
  }
}
