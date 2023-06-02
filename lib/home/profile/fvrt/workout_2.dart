import 'package:fitvera/home/profile/fvrt/timer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Workout_2 extends StatefulWidget {
  const Workout_2({Key? key}) : super(key: key);

  @override
  State<Workout_2> createState() => _Workout_2State();
}

class _Workout_2State extends State<Workout_2> {
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
                child: Container(
                  width: MediaQuery.of(context).size.width/1.1,
                  height: 440,
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
                              "Cable Front Squat",
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("1) Sit on your side with your the side of\n your thigh on the foam roller, the foot\n of your top leg on the ground for\n balance and hand resting on the floor\n behind you.",
                                  style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400
                                ),),
                                SizedBox(
                                  height: 2,
                                ),
                                Text("\n 2) roll the foam roller up and down your\n IT band wherever you feel discomfort.\n Repeat on the opposite side.",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400
                                  ),),

                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 270,
                        top: 20,
                        child: InkWell(
                          onTap: (){
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
                        top: 270,
                        child: Container(
                          height: 140,
                          width: 280,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/cable.png"),
                                fit: BoxFit.fill,
                              )),
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