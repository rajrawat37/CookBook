import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String api = "https://randomuser.me/api/?results=10";

  Future<List<dynamic>> fetchUser() async {
    var result = await http.get(api);
    print(result.body);
    var data = json.decode(result.body)['results'];
    print(data);
    print(data.length);
    return data;
  }

  String _name(dynamic user) {
    return user['name']['title'] +
        " " +
        user['name']['first'] +
        " " +
        user['name']['last'];
  }

  String _location(dynamic user) {
    return user['location']['country'];
  }

  String _age(dynamic user) {
    return "Age: " + user['dob']['age'].toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            child: FutureBuilder(
                future: fetchUser(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  print(snapshot.data.length);
                  if (snapshot.data == null) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    snapshot.data[index]['picture']['thumbnail'])),
                            title: Text(_name(snapshot.data[index])),
                            subtitle: Text(_location(snapshot.data[index])),
                            trailing: Text(_age(snapshot.data[index])),
                          );
                        });
                  }
                })));
  }
}
