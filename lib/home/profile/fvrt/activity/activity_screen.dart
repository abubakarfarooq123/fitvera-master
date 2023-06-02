import 'package:fitvera/gym/open_program.dart';
import 'package:fitvera/home/profile/fvrt/activity/activity_detail.dart';
import 'package:fitvera/home/profile/fvrt/planner/planeer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../../gym/start_open_program.dart';
import '../../../home_navbar.dart';
import '../../../hot_program/hot_program.dart';
import '../fvrt_detail.dart';
import '../workout.dart';



void main() => runApp(Activity_Screen());

class Activity_Screen extends StatefulWidget {
  @override
  _Activity_ScreenState createState() => _Activity_ScreenState();
}

class _Activity_ScreenState extends State<Activity_Screen> {
  DateTime selectedDate = DateTime.now();

  List<DateTime> getDaysInMonth(DateTime month) {
    final int daysInMonth = DateTime(month.year, month.month + 1, 0).day;
    return List<DateTime>.generate(daysInMonth, (index) {
      return DateTime(month.year, month.month, index + 1);
    });
  }

  void _previousMonth() {
    setState(() {
      selectedDate = DateTime(selectedDate.year, selectedDate.month - 1, selectedDate.day);
    });
  }

  void _nextMonth() {
    setState(() {
      selectedDate = DateTime(selectedDate.year, selectedDate.month + 1, selectedDate.day);
    });
  }

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
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  "Activity",
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
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  "Your Daily Activities",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => Activity_detail()));
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 15,
                        top: 17,
                        child: Container(
                          height: 35,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/fire.png"),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                      ),
                      Positioned(
                        left: 66,
                        top: 10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Calories:", style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("300 Kcal", style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 220,
                        top: 25,
                        child: Image.asset(
                          "assets/images/red_line.png",
                          height: 40,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => Activity_detail()));
                },

                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 15,
                        top: 25,
                        child: Container(
                          height: 25,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/walk.png"),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                      ),
                      Positioned(
                        left: 66,
                        top: 10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Steps:", style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("2,434", style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 220,
                        top: 25,
                        child: Image.asset(
                          "assets/images/orange_line.png",
                          height: 40,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => Activity_detail()));
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 15,
                        top: 17,
                        child: Container(
                          height: 30,
                          width: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/navigate.png"),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                      ),
                      Positioned(
                        left: 66,
                        top: 10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Distance:", style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("2.4 Km", style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 220,
                        top: 25,
                        child: Image.asset(
                          "assets/images/blue_line.png",
                          height: 40,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => Activity_detail()));
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 15,
                        top: 17,
                        child: Container(
                          height: 30,
                          width: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/clock.png"),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                      ),
                      Positioned(
                        left: 66,
                        top: 10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Time:", style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("44 Mins", style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 220,
                        top: 25,
                        child: Image.asset(
                          "assets/images/green_line.png",
                          height: 40,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Container(
                alignment: AlignmentDirectional.centerStart,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => Planner()));
                  },
                  child: Text(
                    "Planner:",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                ),
              ),
            ),
            Center(
              child: CalendarWidget(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => Fvrt_detail()));
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
                        padding: const EdgeInsets.all(9.0),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/leg.png"),
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                      Positioned(
                        left: 90,
                        top: 15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Full Body Glute Power",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15),
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
                                      "30-40 Mins",
                                      style: GoogleFonts.poppins(
                                        fontSize: 10.5,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
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
                                      "Advanced",
                                      style: GoogleFonts.poppins(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
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
                        left: 290,
                        top: 20,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Center(
                            child: Icon(
                              Icons.arrow_right,
                              size: 42,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 13, top: 10, bottom: 10),
                child: Text("My Programs:", style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Hot_program()));
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 240,
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/te.jpg"),
                                    fit: BoxFit.fill)),
                          ),
                          Positioned.fill(
                            child: Container(
                              height: 240,
                              width: 180,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 18,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 130),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "The Dirty",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Thirty",
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text(
                                          " Challenge.",
                                          style: GoogleFonts.poppins(
                                            color: Color.fromRGBO(255, 87, 87, 30),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 150,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Home Based Program",
                                          style: GoogleFonts.poppins(
                                              color: Colors.black, fontSize: 12,
                                              fontWeight: FontWeight.w500),
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
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        InkWell(
                          onTap:(){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Hot_program()));
                          },
                          child: Container(
                            height: 240,
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/balll.jpg"),
                                    fit: BoxFit.fill)),

                          ),
                        ),
                        Positioned.fill(
                          child: Container(
                            height: 240,
                            width: 180,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 18,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 130),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pull Up",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Sweaty",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 17
                                        ),
                                      ),
                                      Text(
                                        " Challenge.",
                                        style: GoogleFonts.poppins(
                                            color: Color.fromRGBO(255, 87, 87, 30),
                                            fontWeight: FontWeight.bold,fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 150,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Home Based Program",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black, fontSize: 12,fontWeight: FontWeight.w500),
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
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget CalendarWidget() {
    final List<DateTime> daysInMonth = getDaysInMonth(selectedDate);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: _previousMonth,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(255, 87, 87, 30),
                  ),
                  child: Center(
                    child: Icon(Icons.chevron_left,size: 32,color: Colors.white),

                  ),
                ),
              ),
              Text(
                DateFormat.yMMMM().format(selectedDate),
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InkWell(
                onTap: _nextMonth,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(255, 87, 87, 30),
                  ),
                  child: Center(
                    child: Icon(Icons.chevron_right,size: 32,color: Colors.white),

                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 8,
            childAspectRatio: 1,
          ),
          itemCount: daysInMonth.length,
          itemBuilder: (context, index) {
            final DateTime day = daysInMonth[index];
            final bool isSelected = day.day == selectedDate.day;

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedDate = day;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: isSelected ? Color.fromRGBO(255, 87, 87,30) : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      day.day.toString(),
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

}
