import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home_navbar.dart';

class Noti extends StatefulWidget {
  const Noti({Key? key}) : super(key: key);

  @override
  State<Noti> createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  bool switchValue = false;
  bool switchValue1 = false;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //top bar color
      systemNavigationBarColor: Colors.black, //bottom bar color
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: Color.fromRGBO(29, 69, 100, 30),
      body: ClipRRect(
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(40.0),
          topRight: const Radius.circular(40.0),
        ),
        child: Container(
          height: 800.0,
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 40),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child:Icon(
                          Icons.cancel,
                          color: Colors.black54,
                          size: 35,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80,top: 40),
                      child: Text(
                        "Notifications",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 25),
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.1,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 15),
                          child: Text(
                            "Workout Reminder",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80,top: 5),
                          child: Switch(
                            value: switchValue,
                            onChanged: (value) {
                              setState(() {
                                switchValue = value;
                              });
                            },
                            activeColor: Colors.white,
                            activeTrackColor: Color.fromRGBO(255, 87, 87,30),
                            inactiveThumbColor:  Color.fromRGBO(29, 69, 100, 30),
                            inactiveTrackColor: Colors.grey,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 25),
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.1,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 15),
                          child: Text(
                            "Program Notification",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60,top: 5),
                          child: Switch(
                            value: switchValue1,
                            onChanged: (value) {
                              setState(() {
                                switchValue1 = value;
                              });
                            },
                            activeColor: Colors.white,
                            activeTrackColor: Color.fromRGBO(255, 87, 87,30),
                            inactiveThumbColor:  Color.fromRGBO(29, 69, 100, 30),
                            inactiveTrackColor: Colors.grey,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
