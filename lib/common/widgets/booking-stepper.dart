import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:rider_app/common/widgets/product-picker.dart';

class BookingStepper extends StatefulWidget {

  _BookingStepperState createState() => _BookingStepperState();
}

class _BookingStepperState extends State<BookingStepper> {
  static int _currentStep = 0;
  bool _complete = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100.0),
      child:
        Stepper(
          steps: _steps,
          currentStep: _currentStep,
          onStepTapped: (step) => goTo(step),
          onStepContinue: next,
          onStepCancel: cancel,
        ),
    );
  }

  next() {
    _currentStep + 1 != _steps.length
      ? goTo(_currentStep + 1)
      : setState(() => _complete = true);
  }

  cancel() {
    if (_currentStep > 0) {
      goTo(_currentStep - 1);
    } else if (_currentStep == 0) {
      Navigator.pushNamed(context, 'home');
    }
  }

  goTo(int step) {
    setState(() => _currentStep = step);
  }

  List<Step> _steps = [
    Step(
      title: const Text("Trip Details"),
      isActive: _currentStep >= 0,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: "Pickup",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Destination",
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Date",
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.datetime,
            decoration: InputDecoration(
              labelText: "Time",
            ),
          )
        ],
      )
    ),
    Step(
      title: const Text("Rider Details"),
      isActive: _currentStep >= 1,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: "Name",
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Email",
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Mobile",
            ),
          )
        ],
      )
    ),
    Step(
      title: const Text("Choose Vehicle Class"),
      isActive: _currentStep >= 2,
      content: Column(
        children: <Widget>[
          ProductPicker()
        ],
      )
    ),
    
  ];
}