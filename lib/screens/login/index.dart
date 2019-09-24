import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            left: -30,
            height: 430,
            bottom: 0,
            child: Image(
              image: AssetImage("assets/images/parkedcar.jpg"),
              fit: BoxFit.fitHeight,
              color: Colors.black87,
              colorBlendMode: BlendMode.darken
            ),
          ),
          Positioned(
            top: 90.0,
            child: Padding(
              padding: EdgeInsets.all(40.0),
              child: Column(
                children: <Widget>[
                  Text("Executive",
                    textAlign: TextAlign.left, 
                    style: TextStyle(
                      inherit: false,
                      fontFamily: "Montserrat",
                      color: Colors.white,
                      fontSize: 50.0
                    )
                  ),
                  Text("Transport",
                    textAlign: TextAlign.left, 
                    style: TextStyle(
                      inherit: false,
                      fontFamily: "Montserrat",
                      color: Colors.white,
                      fontSize: 50.0
                    )
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              Form(
                child: Theme(
                  data: ThemeData(
                    brightness: Brightness.dark,
                    primaryColor: Colors.white,
                    fontFamily: "Montserrat",
                    primarySwatch: Colors.amber
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top:80.0),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Enter Email",
                            labelStyle: TextStyle(color: Colors.white),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)
                            )
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Enter Password",
                            labelStyle: TextStyle(color: Colors.white),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)
                            )
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Forgot Password?",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.blue,
                                 ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 45.0),
                          child: MaterialButton(
                            minWidth: 150.0,
                            height: 50.0,
                            splashColor: Colors.grey,
                            color: Colors.white,
                            textColor: Colors.black,
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ), onPressed: () {
                              Navigator.pushNamed(context, 'home');
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                )
            ],),
          )
        ],
      )
    );
  }
}