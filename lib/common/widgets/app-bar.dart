import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ViewAppBar extends StatelessWidget implements PreferredSizeWidget{

  ViewAppBar({Key key}) : preferredSize = Size.fromHeight(56.0), super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.grey),
        leading: Builder(
          builder: (BuildContext context){
            return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
            );
          }
        )
    );  }
}