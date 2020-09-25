import 'package:flutter/material.dart';
class Draw extends StatefulWidget {
  @override
  _DrawState createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  @override
  Widget build(BuildContext context) {
    return Container(child:
       Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Column(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text(
                      "Raj Kumar",
                    ),
                    accountEmail: Text(
                      "rawatraj995@gmail.com",
                    ),
                    currentAccountPicture: CircleAvatar(
                      child: new Text("R"),
                      backgroundColor: Colors.white,
                    ),
                    otherAccountsPictures: <Widget>[
                      CircleAvatar(
                        child: new Text("N"),
                        backgroundColor: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                title: Text("Home"),
                onTap: () => {},
                // Navigator.pop(context);
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                  color: Colors.blue,
                ),
                title: Text("Notifications"),
                onTap: () => {},
              ),
              Divider(),
              Container(
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(35),
                      topRight: Radius.circular(35)),
                  color: Color(0xFF40C4FF).withOpacity(0.3),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                  title: Text("Profile"),
                  onTap: () {},
                ),
              ),
              Divider(),
              Theme(
                data: ThemeData(
                    highlightColor: Colors.orangeAccent,
                    hoverColor: Colors.purple),
                child: ListTile(
                  leading: Icon(
                    Icons.close,
                    color: Colors.blue,
                  ),
                  title: Text("Log Out"),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      
    );
  }
}