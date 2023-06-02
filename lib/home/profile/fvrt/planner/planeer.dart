import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../home_navbar.dart';
import '../../../hot_program/hot_program.dart';
import '../workout.dart';
import 'completed.dart';



void main() => runApp(Planner());

class Planner extends StatefulWidget {
  @override
  _PlannerState createState() => _PlannerState();
}

class _PlannerState extends State<Planner> {
  late final double value;
  late final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding:  EdgeInsets.only(left: 10, top: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(left: 5, top: 2),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding:  EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  "Planner",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding:  EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  "This is your scheduled planner.",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding:  EdgeInsets.only( top: 25),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => Completed()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width/1.1,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding:  EdgeInsets.all(9.0),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/scout.png"),
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                      Positioned(
                        left: 90,
                        top: 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Squat Knee Hug",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '\u2B50',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.0,
                                  ),
                                ),
                                Text(
                                  '\u2B50',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.0,
                                  ),
                                ),
                                Text(
                                  '\u2B50',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.0,
                                  ),
                                ),
                                Text(
                                  '\u2B50',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.0,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 270,
                        top: 20,
                        child: Padding(
                          padding:  EdgeInsets.only(top: 2),
                          child: Center(
                            child: Icon(
                              Icons.arrow_right,
                              size: 42,
                              color: Color.fromRGBO(255, 87, 87, 30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only( top: 25),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) =>  Completed()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width/1.1,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding:  EdgeInsets.all(9.0),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/scout.png"),
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                      Positioned(
                        left: 90,
                        top: 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Squat Knee Hug",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '\u2B50',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.0,
                                  ),
                                ),
                                Text(
                                  '\u2B50',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.0,
                                  ),
                                ),
                                Text(
                                  '\u2B50',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.0,
                                  ),
                                ),
                                Text(
                                  '\u2B50',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.0,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 270,
                        top: 20,
                        child: Padding(
                          padding:  EdgeInsets.only(top: 2),
                          child: Center(
                            child: Icon(
                              Icons.arrow_right,
                              size: 42,
                              color: Color.fromRGBO(255, 87, 87, 30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only( top: 25),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) =>  Completed()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width/1.1,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding:  EdgeInsets.all(9.0),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/scout.png"),
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                      Positioned(
                        left: 90,
                        top: 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Squat Knee Hug",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text(
                              '\u2B50',
                              style: GoogleFonts.poppins(
                                fontSize: 14.0,
                              ),
                            ),
                                Text(
                                  '\u2B50',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.0,
                                  ),
                                ),
                                Text(
                                  '\u2B50',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.0,
                                  ),
                                ),
                                Text(
                                  '\u2B50',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.0,
                                  ),
                                ),

                        ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 270,
                        top: 20,
                        child: Padding(
                          padding:  EdgeInsets.only(top: 2),
                          child: Center(
                            child: Icon(
                              Icons.arrow_right,
                              size: 42,
                              color: Color.fromRGBO(255, 87, 87, 30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
