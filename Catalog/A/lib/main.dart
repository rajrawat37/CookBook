import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AbsorbPointer(
        absorbing: false,
        child: RaisedButton(
          onPressed: () {
            showAboutDialog(
              context: context,
              applicationIcon: FlutterLogo(),
              applicationVersion: '3.7.6',
              applicationLegalese: 'A Medical Bot',
              applicationName: 'MedBot',
            );
          },
          child: Text(
            'Show',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.red,
        ),
      ),
    );
  }
}
