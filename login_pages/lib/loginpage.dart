import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
  ));
}

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image.network(
                'https://cdn.hostapk.com/wp-content/uploads/2019/11/Ai.-Gallery-300x300.png'),
            Container(
              child: Center(
                child: Column(
                  children: [RaisedButton(onPressed: () {}),
                    
                   ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
