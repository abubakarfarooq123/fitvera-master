import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 50),
              child: Row(
                children: [
                  InkWell(
                    onTap:(){
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
                          padding: const EdgeInsets.only(left: 5,top: 2),
                          child: Icon(
                                    Icons.arrow_back_ios,
                                  color: Colors.black54,
                                ),
                            ),
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70,top: 5),
                    child: Text(
                      "Notification",
                      style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,top: 20),
              child: Text("You have 2 new notifications",style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 15,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Today",style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                  ),),
                  SizedBox(
                    width: 140,
                  ),
                  Icon(FontAwesomeIcons.checkDouble),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Mark as Read",style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600
                  ),),
                ],
              ),
            ),
            Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    top:45,
                    left: 16,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 32,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(Icons.notifications,
                          color: Color.fromRGBO(29, 69, 100, 30),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 84,
                    top: 30,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "New Goal",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                        ),
                        Text(
                          "New goal is updated.",style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 11
                        ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 280,
                    child: Text(
                      "just now",style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                    ),
                  ),
                ],
              ),
            ),
          Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Positioned(
                      top:45,
                      left: 16,
                      child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                    ),
                    Positioned(
                      top: 30,
                      left: 32,
                      child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Icon(Icons.notifications,
                              color: Color.fromRGBO(29, 69, 100, 30),
                            ),
                          ),
                        ),
                    ),
                    Positioned(
                      left: 84,
                      top: 30,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Take Photo",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),
                            ),
                            Text(
                              "Please take front side photo.",style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 11
                            ),
                            ),
                          ],
                        ),
                    ),
                    Positioned(
                      top: 50,
                      left: 280,
                      child: Text(
                          "just now",style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                        ),
                      ),
                  ],
                ),
              ),

            Padding(
              padding: const EdgeInsets.only(left: 16,top: 5),
              child: Text("Recents",style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),),
            ),
            Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    left: 16,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(Icons.notifications,
                          color: Color.fromRGBO(29, 69, 100, 30),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 74,
                    top: 30,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Goal Achieved",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                        ),
                        Text(
                          "Congrats, goal is achieved.",style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 11
                        ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 280,
                    child: Text(
                      "just now",style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    top: 32,
                    left: 16,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(Icons.notifications,
                          color: Color.fromRGBO(29, 69, 100, 30),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 74,
                    top: 30,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Task Completed",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                        ),
                        Text(
                          "Nice! task is completed.",style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 11
                        ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 280,
                    child: Text(
                      "just now",style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 10,
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
