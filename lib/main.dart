import 'package:flutter/material.dart';
import 'screens/home/index.dart';
import 'screens/login/index.dart';

void main() => runApp(Routes());

class Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rider App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.grey
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => LoginScreen(),
        'home' : (context) => HomeScreen()
      },
    );
  }
}

class User {
  String id = '00001';
  String firstName = "Regina";
  String lastName = "Toca";
  String email = "rosareginatoca@gmail.com";
  String password = "Regina1234";
  num mobile = 0271234567;
}

class Ride {
  String pickup = "";
}
