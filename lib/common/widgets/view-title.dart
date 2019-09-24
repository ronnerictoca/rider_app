import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ViewTitle extends StatelessWidget {
  final double height;
  final String title;

  const ViewTitle(this.height, this.title);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: height * .015,
        left: 25.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(fontSize: 38.0, fontFamily: "Montserrat"),
            )
          ],
        ),
      );
  }
}
