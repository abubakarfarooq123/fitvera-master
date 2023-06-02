import 'package:fitvera/home/profile/fvrt/timer.dart';
import 'package:fitvera/home/profile/fvrt/workout_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Fvrt_prep extends StatefulWidget {
  const Fvrt_prep({Key? key}) : super(key: key);

  @override
  State<Fvrt_prep> createState() => _Fvrt_prepState();
}

class _Fvrt_prepState extends State<Fvrt_prep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: AlignmentDirectional.centerStart,

              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 30),
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
                      padding: const EdgeInsets.only(left: 5, top: 2),
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
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "Workout",
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
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Exercise 1/5",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child:  Container(
                  width:MediaQuery.of(context).size.width/1.1,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        top: 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sprint to Stick",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 25,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "2 Rounds",
                                      style: GoogleFonts.poppins(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(255, 87, 87, 30),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 25,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "10 Reps",
                                      style: GoogleFonts.poppins(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(255, 87, 87, 30),
                                      ),
                                    ),
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
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context, MaterialPageRoute(
                                builder: (context) => Workout_2()));
                          },
                          child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 87, 87,30),
                                shape: BoxShape.circle
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.next_plan,
                                  size: 22,
                                  color: Colors.white,
                                ),
                            ),
                          ),
                        ),
                      ),
                     Positioned(
                       left: 20,
                       top: 130,
                       child: InkWell(
                         onTap: (){
                         },
                         child: Container(
                              height: 250,
                              width: 280,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/front.png"),
                                    fit: BoxFit.fill,
                                  )),
                            ),
                       ),
                     ),

                    ],
                  ),
                ),
              ),

          ],
        ),
      ),
    );
  }
}