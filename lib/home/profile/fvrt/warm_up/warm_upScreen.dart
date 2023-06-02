import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitvera/home/profile/fvrt/warm_up/start_warmup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../timer.dart';


class Warm_up extends StatelessWidget {
  const Warm_up({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 240),
                    child: TextButton(
                      onPressed: (){},
                      child: Text(
                          "Skip Warm Up",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 11
                      ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Warm Up",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "with 05 Exercises & 01 Round",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                  ),

                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 30),
              child: Image.asset(
                "assets/images/time.png",
                height: 250,
                width: 330,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Hay James",
                style: GoogleFonts.monoton(
                    color: Color.fromRGBO(255, 87, 87,30),
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Ready to Start!",
                style: GoogleFonts.poppins(
                  color: Color.fromRGBO(29, 69, 100, 30),
                  fontSize: 22,
                  fontWeight: FontWeight.w900
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 140,right: 20),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 87, 87,30),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Back",style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(
                            builder: (context) => StopwatchApp()));
                      },
                      child: Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(29, 69, 100, 30),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Go",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
