import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProductPicker extends StatefulWidget {
  ProductPicker({Key key}) : super(key: key);

  _ProductPickerState createState() => _ProductPickerState();
}

class _ProductPickerState extends State<ProductPicker> {
  var selectedCard;
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200.0,
        child: FutureBuilder(
          future: DefaultAssetBundle
                .of(context)
                .loadString('assets/data/product-class.json'),
          builder: (context, snapshot) {
            var newData = json.decode(snapshot.data.toString());

            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: newData == null ? 0 : newData.length,
              itemBuilder: (BuildContext context, int i) { 
                return Container(
                
                width: 240.0,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedCard = newData[i]['id'];
                    });
                  },
                  child: Card(
                    shape: selectedCard == newData[i]['id']
                          ? RoundedRectangleBorder(
                            side: new BorderSide(color: Colors.black54, width: 2.0))
                        : null,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(newData[i]['imageFile']),
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      child: Container(
                        child: Text(
                          newData[i]['name'].toString().toUpperCase(),
                          style: TextStyle(
                              fontSize: 20.0, fontFamily: "Montserrat"),
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
              );
            });
          }
          
        ));
  }
}
