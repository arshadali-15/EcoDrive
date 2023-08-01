import 'dart:async';
import 'package:flutter/material.dart';
import '../main.dart';
import 'homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
        duration: Duration(seconds: 2),
        vsync:this,
    );

    _animationController.forward();
    _animationController.addListener(() {setState(() {});});


    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {

    mq =MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.withOpacity(_animationController.value),
      //body
      body: Stack(children: [
        //app logo
        Positioned(
            top: mq.height * .30,
            right: mq.width * .15,

            width: mq.width * .7,
            child: Hero(tag: 'eco_drive',
            child: Image.asset('assets/images/eco_drive.png'))),

        //google login button
        Positioned(
            bottom: mq.height * .20,
            width: mq.width,
            child: const Text('Find your ECO-DRIVE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily:'Tektur',
                    fontSize: 25, color: Colors.black87, letterSpacing: 1))),
      ]),
    );
  }
}