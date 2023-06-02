import 'package:fitvera/home/all_program.dart';
import 'package:fitvera/home/notification.dart';
import 'package:fitvera/home/profile/fvrt/activity/activity_screen.dart';
import 'package:fitvera/home/profile/fvrt/fvrt_detail.dart';
import 'package:fitvera/home/profile/profile_details.dart';
import 'package:fitvera/home/workouts/all_workouts.dart';
import 'package:fitvera/receipy_book/all_recipies.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../receipy_book/breakfast_detail.dart';
import 'hot_program/hot_program.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width/1.1,

              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: IconButton(onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Profile_detail()));
                    },
                      icon: Icon(
                        Icons.category,size: 30,
                      color: Color.fromRGBO(29, 69, 100, 30),
                        ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35,top: 10),
                    child: Image.asset(
                        "assets/images/logo.png",
                        height: 100,
                        width: 150,
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 45,top: 26),
                    child: IconButton(onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Notifications()));
                    },
                      icon: Icon(
                        Icons.notifications_on_sharp,size: 25,
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
                  padding: const EdgeInsets.only(top: 15,left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good morning,",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      ),
                      Text("Billy James",style: GoogleFonts.poppins(
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
              padding: const EdgeInsets.only(left: 10,top: 20),
              child: Container(
                width: MediaQuery.of(context).size.width/1.1,
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hot Programs",style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: InkWell(
                          onTap: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => All_Programs()));

                          },
                          child: Text("View All",style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(255, 87, 87,30),

                          ),
                          ),
                      ),
                    ),
                  ],
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
            Padding(
              padding: const EdgeInsets.only(left: 10,top:20),
              child: Container(
                width: MediaQuery.of(context).size.width/1.1,
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Workouts",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                    ),
                    SizedBox(
                      width: 179,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => All_workouts()));

                        },
                        child: Text("View All",style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 87, 87,30),

                        ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
           SizedBox(
             height: 10,
           ),
           SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Container(
                        height: 200,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                    context, MaterialPageRoute(
                                    builder: (context) => Fvrt_detail()));

                              },
                              child: Container(
                                      height: 170,
                                      width: 250,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                          image: DecorationImage(
                                              image: AssetImage("assets/images/jim.png"),
                                              fit: BoxFit.fill)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10, top: 20),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 170),
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey.withOpacity(0.2),
                                          ),
                                          child: Center(
                                            child: Icon(
                                              FontAwesomeIcons.solidHeart,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 15,top: 40),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [

                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  "Sweaty Body",
                                                  style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                SizedBox(
                                                    height:10
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(FontAwesomeIcons.fire,color: Colors.white,size: 12,),
                                                    SizedBox(
                                                      width:5,
                                                    ),
                                                    Text(
                                                      "223 Cal",
                                                      style: GoogleFonts.poppins(
                                                        color: Colors.white,
                                                        fontSize:9,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Icon(FontAwesomeIcons.clock,color: Colors.white,size: 12,),
                                                    SizedBox(
                                                      width:5,
                                                    ),
                                                    Text(
                                                      "6 mins",
                                                      style: GoogleFonts.poppins(
                                                          color: Colors.white,
                                                          fontSize:9
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 55,top: 50),
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 8),
                                                  child: CircularProgressIndicator(
                                                    value: 0.8,
                                                    valueColor: AlwaysStoppedAnimation(Colors.white),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 6,top: 20),
                                                  child: Text(
                                                    "80 %",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.white
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Full Body Program",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w700
                            ),),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Container(
                        height: 200,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                    context, MaterialPageRoute(
                                    builder: (context) => Fvrt_detail()));

                              },
                              child: Container(
                                height: 170,
                                width: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/sct.jpg"),
                                        fit: BoxFit.fill)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10, top: 20),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 170),
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey.withOpacity(0.2),
                                          ),
                                          child: Center(
                                            child: Icon(
                                              FontAwesomeIcons.solidHeart,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 15,top: 40),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [

                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  "Sweaty Body",
                                                  style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                SizedBox(
                                                    height:10
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(FontAwesomeIcons.fire,color: Colors.white,size: 12,),
                                                    SizedBox(
                                                      width:5,
                                                    ),
                                                    Text(
                                                      "223 Cal",
                                                      style: GoogleFonts.poppins(
                                                        color: Colors.white,
                                                        fontSize:9,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Icon(FontAwesomeIcons.clock,color: Colors.white,size: 12,),
                                                    SizedBox(
                                                      width:5,
                                                    ),
                                                    Text(
                                                      "6 mins",
                                                      style: GoogleFonts.poppins(
                                                          color: Colors.white,
                                                          fontSize:9
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 55,top: 50),
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 8),
                                                  child: CircularProgressIndicator(
                                                    value: 0.8,
                                                    valueColor: AlwaysStoppedAnimation(Colors.white),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 6,top: 20),
                                                  child: Text(
                                                    "80 %",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.white
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Full Body Program",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w700
                            ),),
                          ],
                        ),
                      ),
                    ),
                     ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 20),
              child: Container(
                width: MediaQuery.of(context).size.width/1.1,
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Recipies",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                    ),
                    SizedBox(
                      width: 191,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => All_recipies()));

                        },
                        child: Text("View All",style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 87, 87,30),

                        ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        InkWell(
                          onTap:(){
                            Navigator.push(
                                context, MaterialPageRoute(
                                builder: (context) => Breakfast_Detail()));

                          },

                          child: Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/eat.png"),
                                    fit: BoxFit.fill),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 120),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Container(
                                      width: 140,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 5),
                                              child: Text(
                                                "Sweet Chicken",
                                                style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                  fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 25,top: 4),
                                                  child: Text(
                                                    "10 mins",
                                                    style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize: 12
                                                  ),
                                                  ),
                                                ),
                                                Text(" | ",style: GoogleFonts.poppins(
                                                  color: Colors.white
                                                ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top:4),
                                                  child: Text("1 Serving",style: GoogleFonts.poppins(
                                                      color: Colors.white,
                                                    fontSize: 12
                                                  ),
                                                  ),
                                                ),
                                              ],
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
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap:(){
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => Breakfast_Detail()));
                      },
                      child: Container(
                        height: 200,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage("assets/images/meat.png"),
                                fit: BoxFit.fill)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 120),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Container(
                                  width: 140,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Text(
                                            "Special Rice",
                                            style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 25,top: 4),
                                              child: Text(
                                                "10 mins",
                                                style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize: 12
                                                ),
                                              ),
                                            ),
                                            Text(" | ",style: GoogleFonts.poppins(
                                                color: Colors.white
                                            ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top:4),
                                              child: Text("1 Serving",style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontSize: 12
                                              ),
                                              ),
                                            ),
                                          ],
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
