import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitvera/home/profile/fvrt/planner/completed.dart';
import 'package:fitvera/home/profile/fvrt/planner/share.dart';
import 'package:fitvera/home/profile/fvrt/warm_up/warm_upScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Workout_complete extends StatelessWidget {
  const Workout_complete({Key? key}) : super(key: key);

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
              height: 60,
            ),
            Center(
              child: Image.asset(
                "assets/images/logo.png",
                height: 140,
                width: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 30),
              child: Image.asset(
                "assets/images/im.png",
                height: 220,
                width: 300,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
                  "Awesome!",
                  style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
            Center(
              child: Text(
                "Workout is completed.",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width/1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: Center(
                  child: Text("Mar 12, 2023 - Full Body",style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20
                  ),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 50,right: 20),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => Completed()));
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
                             "Close",style: GoogleFonts.poppins(
                           color: Colors.white,
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
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => Share()));
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
                            "Share",
                            style: GoogleFonts.poppins(
                            color: Colors.white,
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
