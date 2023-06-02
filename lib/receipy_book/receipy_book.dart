import 'package:fitvera/home/profile/profile_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/notification.dart';
import '../home/profile/about_you.dart';
import '../home/profile/fvrt/activity/activity_screen.dart';
import 'all_recipies.dart';
import 'breakfast_detail.dart';
import 'buy.dart';
import 'breakfast.dart';

class Receipy_Book extends StatefulWidget {
  const Receipy_Book({Key? key}) : super(key: key);

  @override
  State<Receipy_Book> createState() => _Receipy_BookState();
}

class _Receipy_BookState extends State<Receipy_Book> {
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
                  padding: const EdgeInsets.only(top: 15, left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good morning,",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Billy James",
                        style: GoogleFonts.poppins(
                            color: Color.fromRGBO(29, 69, 100, 30),
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Recipe Book:",style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                  ),
                  SizedBox(
                    width: 136,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => All_recipies()));
                      },
                      child: Text("My Recipies",style: GoogleFonts.poppins(
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
            Padding(
              padding: const EdgeInsets.only(left:10,top: 20 ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Breakfast()));
                      },
                      child: Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text("BreakFast",style: GoogleFonts.poppins(
                              color: Color.fromRGBO(255, 87, 87,30),
                              fontSize: 11,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Lunch",style: GoogleFonts.poppins(
                            color: Color.fromRGBO(255, 87, 87,30),
                            fontSize: 11,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Snacks",style: GoogleFonts.poppins(
                            color: Color.fromRGBO(255, 87, 87,30),
                            fontSize: 11,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Dinner",
                          style: GoogleFonts.poppins(
                              color: Color.fromRGBO(255, 87, 87,30),
                              fontSize: 11,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
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
                                                        fontSize: 12,
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
                                                      fontSize: 12,
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
                  Stack(
                    children:[
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Buy()));
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
                                                      fontSize: 12,
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
                                                    fontSize: 12,
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
                      Positioned(
                        left: 40,
                        top: 50,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                          ),
                          child: Center(
                            child: Image.asset("assets/images/lock.png"),
                          ),
                        ),
                      ),


                    ],
                  ),
                ],
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
                                                        fontSize: 12,
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
                                                      fontSize: 12,
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
                  Stack(
                    children:[
                      InkWell(
                        onTap:(){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Buy()));
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
                                                      fontSize: 12,
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
                                                    fontSize: 12,
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
                      Positioned(
                        left: 40,
                        top: 50,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Image.asset("assets/images/lock.png"),
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
