import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'onboarding/onboarding.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late Animation _logoAnimation;
  late AnimationController _logoController;

  @override
  void initState() {
    _logoController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _logoAnimation = CurvedAnimation(
      parent: _logoController,
      curve: Curves.easeIn,
    );

    _logoAnimation.addListener(() {
      if (_logoAnimation.status == AnimationStatus.completed) {
        return;
      }
      setState(() {});
    });

    _logoController.forward();
    super.initState();
    startTime();
  }

  Widget _buildLogo() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: _logoAnimation.value * 300.0,
            width: _logoAnimation.value * 300.0,
            child: Image.asset("assets/images/logo.png"),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("BE ALL ",style: GoogleFonts.poppins(
                color: Color.fromRGBO(29, 69, 100, 30),
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
              Text("YOU.",style: GoogleFonts.poppins(
                  color: Color.fromRGBO(255, 87, 87,30),
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),),
            ],
          ),
        ],
      ),
    );
  }

  void navigationPage() async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Onbording()));
  }

  startTime() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, navigationPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildLogo(),
    );
  }
}