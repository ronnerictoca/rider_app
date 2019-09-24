import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rider_app/common/widgets/app-bar.dart';
import 'package:rider_app/common/widgets/app-drawer.dart';
import 'package:rider_app/common/widgets/booking-stepper.dart';
import 'package:rider_app/common/widgets/landing-widget.dart';
import 'package:rider_app/common/widgets/view-title.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool proceedBooking = false;

  proceedCallback(proceed) {
    setState(() {
      proceedBooking = proceed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: ViewAppBar(),
      drawer: Drawer(
        child: AppDrawer(),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          var width = constraints.maxWidth;
          var height = constraints.maxHeight;

          return Stack(
            fit: StackFit.expand,
            children: <Widget>[
              ViewTitle(height, "Book a Ride"),
              AnimatedCrossFade(
                  duration: Duration(milliseconds: 400),
                  firstChild: Locations(proceedBooking, proceedCallback),
                  secondChild: BookingStepper(),
                  crossFadeState: !proceedBooking
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond)
            ],
          );
        },
      ),
    );
  }

}
