import 'dart:async';
import 'package:bmi_calculator/home_page.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer()async {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }
  @override
  void initState(){
    super.initState();
    startTimer();
  }
  @override
  Widget build(BuildContext context) {
  // return const Placeholder();
  //}
    return Scaffold(
      body:Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png",width: 300,
              height: 150,),
            const SizedBox(height: 10,),
            Text('BMI Calculator',style: GoogleFonts.acme(
                fontSize: 30,fontWeight: FontWeight.bold,
                color: Colors.deepOrangeAccent
            ),),
            const SizedBox(height: 10,),
            const CircularProgressIndicator(
              color: Colors.deepOrangeAccent,
            ),

          ],
        ),
      ),

    );
  }


}
