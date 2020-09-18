import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => FirstScreen(),
      '/second': (context) => Second(),
      '/third': (context) => ThirdScreen(),
      '/fourth': (context) => FourthScreen(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  // int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
        backgroundColor: Colors.indigoAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.mic),
          backgroundColor: Colors.indigoAccent,
          splashColor: Colors.blue,
          onPressed: () {}),
      bottomNavigationBar: BottomAppBar(
          // currentIndex: index,
          // onTap: (int index) {
          //   setState(() {
          //     this.index = index;
          //   });
          // },
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              IconButton(
                icon: Icon(Icons.home),
                splashColor: Colors.blue,
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context).pushNamed('/');
                },
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                height: 55.0,
                width: 1.0,
              ),
              IconButton(
                icon: Icon(Icons.chat_bubble),
                splashColor: Colors.blue,
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context).pushNamed('/second');
                },
              ),
              SizedBox(
                width: 90,
              ),
              IconButton(
                icon: Icon(Icons.near_me),
                color: Colors.white,
                splashColor: Colors.blue,
                onPressed: () {
                  Navigator.of(context).pushNamed('/third');
                },
              ),
              SizedBox(
                width: 25,
              ),
              IconButton(
                icon: Icon(Icons.notifications),
                splashColor: Colors.blue,
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context).pushNamed('/fourth');
                },
              ),
            ],
          ),
          color: Colors.indigo,
          notchMargin: 5,
          clipBehavior: Clip.antiAlias,
          shape: CircularNotchedRectangle()),
    );
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
    );
  }
}

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
    );
  }
}
