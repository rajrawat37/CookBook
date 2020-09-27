import 'package:flutter/material.dart';
import 'package:music_app/drawers.dart';
import 'package:music_app/navbar.dart';
import 'package:music_app/logincard.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: 'Flutter Navigation',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: new Text("App Bar"),
        ),
        drawer: Draw(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[ 
              Text('Click button to move to ButtonsPage'),
              RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text('Go to NextPage'),
                onPressed: (){},
                // onPressed: () {
                //   navigateToSubPage(context);
                // },
              ),
               Text('Click button to move to CardsPage'),
              RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text('Go to NextPage'),
                onPressed: () {
                  navigateToSecondPage(context);
                },
              )
            ],
          ),
        ),
        bottomNavigationBar: Nav(),
        
    );
  }

  // Future navigateToSubPage(context) async {
  //   Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
  // }
  Future navigateToSecondPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
  }
}
