import 'dart:developer';

import 'package:flutter/material.dart';
class Result extends StatelessWidget {


  final double bmi;

  //const Result({super.key});
  Result({required this.bmi});
  var bgColor=Colors.indigo.shade200;

  String _getBMICategory(double bmi) {
    if (bmi < 18.5) {
      return 'You are Underweight';
    } else if (bmi < 24.9) {
      return 'You are Normal weight';
    } else if (bmi < 29.9) {
      return 'You are Overweight';
    } else {
      return 'You are suffering from Obesity';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
               width: 300,
              // color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Text("Your BMI is ${bmi.toStringAsFixed(4)}",style: TextStyle(fontSize: 30,color: Colors.white),),
                SizedBox(height: 20),
                Text(
                  _getBMICategory(bmi),
                  style: TextStyle(fontSize: 30,color: Colors.white,),
                ),
            ],
            ),
          ),
        ),
      ),
    );
  }
}
