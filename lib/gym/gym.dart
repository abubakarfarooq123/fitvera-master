import 'package:fitvera/gym/start_open_program.dart';
import 'package:fitvera/gym/view_bio.dart';
import 'package:fitvera/home/notification.dart';
import 'package:fitvera/home/profile/fvrt/activity/activity_screen.dart';
import 'package:fitvera/home/profile/fvrt/fvrt_detail.dart';
import 'package:fitvera/home/profile/profile_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'open_program.dart';

class Gym extends StatefulWidget {
  const Gym({Key? key}) : super(key: key);

  @override
  State<Gym> createState() => _GymState();
}

class _GymState extends State<Gym>  with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context){

    TabController _tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: IconButton(onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile_detail()));
                    },
                      icon: Icon(
                        Icons.category, size: 30,
                        color: Color.fromRGBO(29, 69, 100, 30),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 10),
                    child: Image.asset(
                      "assets/images/logo.png",
                      height: 100,
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 45, top: 26),
                    child: IconButton(onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => Notifications()));
                    },
                      icon: Icon(
                        Icons.notifications_on_sharp, size: 25,
                        color: Color.fromRGBO(29, 69, 100, 30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: CircleAvatar(
                    radius: 43,
                    backgroundColor: Color.fromRGBO(255, 87, 87,30),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/profile1.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good morning,", style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      ),
                      Text("Billy James", style: GoogleFonts.poppins(
                          color: Color.fromRGBO(29, 69, 100, 30),
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => Activity_Screen()));

                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Your Daily Activities',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 140,
                      ),
                      Icon(Icons.search,color: Colors.grey,),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 280,
                width: 330,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/images/sit.png",),
                    )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 180),
                      child: Text("Danyele",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text("Advanced Trainer",style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),),
                          SizedBox(
                            width: 85,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                  context, MaterialPageRoute(
                                  builder: (context) => View_Bio()));
                            },
                            child: Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 87, 87,30),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text("View Bio",style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 13
                                  ),)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              indicatorColor: Color.fromRGBO(255, 87, 87,30),
              tabs: [
                Tab(text: 'Workouts'),
                Tab(text: 'Programs'),
              ],
              labelStyle:
              GoogleFonts.poppins(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
              labelPadding: EdgeInsets.only(left: 60, right: 60),
              isScrollable: true,
            ),
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context, MaterialPageRoute(
                                builder: (context) =>  Fvrt_detail()));
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
                                           fontWeight: FontWeight.w500,
                                            fontSize: 15
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
                               left: 290,
                                  top: 20,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 2),
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
                        padding: const EdgeInsets.only(top: 25),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context, MaterialPageRoute(
                                builder: (context) => const Open_Program()));
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
                                           fontWeight: FontWeight.w500,
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
                               left: 290,
                                  top: 20,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 2),
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
                        padding: const EdgeInsets.only(top: 25),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context, MaterialPageRoute(
                                builder: (context) => const Open_Program()));
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
                                           fontWeight: FontWeight.w500,
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
                               left: 290,
                                  top: 20,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 2),
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
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context, MaterialPageRoute(
                                builder: (context) => Start_open_program()));
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
                                          image: AssetImage("assets/images/scout.png"),
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                ),
                                Positioned(
                                  left: 100,
                                  top: 30,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Squat Knee Hug",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                           fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 5,
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
                        padding: const EdgeInsets.only(top: 25),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context, MaterialPageRoute(
                                builder: (context) => Start_open_program()));
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
                                          image: AssetImage("assets/images/scout.png"),
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                ),
                                Positioned(
                                  left: 100,
                                  top: 30,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Squat Knee Hug",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                           fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 5,
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
                        padding: const EdgeInsets.only(top: 25),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context, MaterialPageRoute(
                                builder: (context) => Start_open_program()));
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
                                          image: AssetImage("assets/images/scout.png"),
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                ),
                                Positioned(
                                  left: 100,
                                  top: 30,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Squat Knee Hug",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                           fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 5,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}