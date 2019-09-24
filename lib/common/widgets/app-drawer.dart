import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: ListView(children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("Ronn Toca"),
          accountEmail: Text("ronnerictoca@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text("RT"),
          ),
        ),
        ListTile(
          title: Text("Book a Ride"),
          leading: Icon(Icons.directions_car),
          onTap:() {
            Navigator.pushNamed(context, 'home');
          },
        ),
        ListTile(
          title: Text("Your Trips"),
          leading: Icon(Icons.list),
          onTap:() {
            
          },
        ),
        ListTile(
          title: Text("Products"),
          leading: Icon(Icons.view_carousel),
          onTap:() {
            
          },
        ),
      ]),
    );
  }
}
