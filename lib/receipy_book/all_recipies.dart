import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'breakfast_detail.dart';
import 'buy.dart';
import 'breakfast.dart';
import 'favorite.dart';


class All_recipies extends StatefulWidget {
  const All_recipies({Key? key}) : super(key: key);

  @override
  State<All_recipies> createState() => _All_recipiesState();
}

class _All_recipiesState extends State<All_recipies> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Color.fromRGBO(29, 69, 100, 30),
          centerTitle: true,
          title: Text(
            "Recipies",
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 22,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            IconButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Favorite()));
                },
                icon: Icon(
              FontAwesomeIcons.solidHeart,
              color: Color.fromRGBO(255, 87, 87,30),
            ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:10,top: 20 ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap:(){
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
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
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
            SizedBox(
              height: 20,
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
