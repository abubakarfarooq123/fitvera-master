import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home_navbar.dart';
import '../profile/fvrt/fvrt_detail.dart';
class All_workouts extends StatefulWidget {
  const All_workouts({Key? key}) : super(key: key);

  @override
  State<All_workouts> createState() => _All_workoutsState();
}

class _All_workoutsState extends State<All_workouts> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => homeNavBar()));
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
                  Padding(
                    padding: const EdgeInsets.only(left: 80, top: 5),
                    child: Text(
                      "All Workouts",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width/1.1,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.2),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search,color: Colors.grey,),
                      onPressed: () {
                        // Handle search button press
                      },
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  ),
                ),
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 15),
                child: Text("Total Body:",style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SingleChildScrollView(
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




            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 15),
                child: Text("Total Body:",style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child:  SingleChildScrollView(
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




            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 15),
                child: Text("Total Body:",style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SingleChildScrollView(
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



            ),
            SizedBox(
              height: 20,
            ),

          ],
        ),
      ),
    );
  }
}
