import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Locations extends StatefulWidget {
  bool proceedBooking;
  Function(bool) callback;

  Locations(this.proceedBooking, this.callback);

  @override
  _LocationsState createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 175.0),
      padding: EdgeInsets.only(left:40.0, right: 40.0),
       child: Column(
         children: <Widget>[
           TextFormField(
             decoration: InputDecoration(
               labelText: "Pick-up",
               filled: true,
               fillColor: Colors.grey[150],
               border: OutlineInputBorder(
                 borderSide: BorderSide(
                   color: Colors.grey,
                 ),
                 borderRadius: BorderRadius.zero
               )
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 30.0),
             child: TextFormField(
               decoration: InputDecoration(
                 labelText: "Destination",
                 filled: true,
                 fillColor: Colors.grey[150],
                 border: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.grey,
                   ),
                   borderRadius: BorderRadius.zero
                 )
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 70.0),
             child: MaterialButton(
               child: Text("BOOK NOW"),
               textColor: Colors.white,
               onPressed: () {
                widget.callback(true);
               },
               color: Colors.black,
               padding: EdgeInsets.symmetric(),
               height: 55.0,
               minWidth: 200.0,
              //  elevation: 5.0,
              //  shape: Border.all(
              //    color: Colors.grey[500],
              //    width: 2.0,
              //    style: BorderStyle.solid
              //    ),
             ),
           )
         ],
       ),
    );
  }
}