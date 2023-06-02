import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'intro_2.dart';

class Intro_1 extends StatelessWidget {
  const Intro_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                IconButton(
                  icon: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      shape: BoxShape.circle
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black54,
                          size: 22,
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Image.asset(
                      "assets/images/logo.png",
                      height: 100,
                      width: 150,
                    ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 18, right: 18),
              child: Text(
                "Strong Programs.",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 5),
              child: Text(
                "Choose the program which suits you best.",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 18, right: 18),
              child: Text(
                "Glutes and Body.",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 5),
              child: Text(
                "The best programs for build strong glutes \n and sculpt the entire body.",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10)
                ),
                height: 100,
                width: 340,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "These programs are designed for \n                     HOME and GYM",
                        style: GoogleFonts.poppins(
                            color: Color.fromRGBO(255, 87, 87, 30),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        "One Time Payment / Life Access",
                        style: GoogleFonts.poppins(
                          color: Color.fromRGBO(29, 69, 100, 30),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                width: 340,
                height: 460,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/images/te.jpg"),
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only( top: 12, right: 18),
              child: Text(
                "Main tools",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                leading: Text(
                  '\u2713',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                title: Text(
                  "Culpa placeat quia sed.",
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                leading: Text(
                  '\u2713',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                title: Text(
                  "Ea id ab ea rem maiores recusandae.",
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                leading: Text(
                  '\u2713',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                title: Text(
                  "Quasi deserunt quia.",
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                leading: Text(
                  '\u2713',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                title: Text(
                  "Numquam quasi rerum numquam.",
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 20),
              child: Text(
                "Minus et enim incidunt illo autem et pariatur quis voluptatem. A eaque adipisci vitae omnis qui sunt autem sunt ratione.",
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Text(
                "Additional Tools",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                leading: Text(
                  '\u2713',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                title: Text(
                  "Culpa placeat quia sed.",
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                leading: Text(
                  '\u2713',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                title: Text(
                  "Ea id ab ea rem maiores recusandae.",
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                leading: Text(
                  '\u2713',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                title: Text(
                  "Quasi deserunt quia.",
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                leading: Text(
                  '\u2713',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                title: Text(
                  "Numquam quasi rerum numquam.",
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 20),
              child: Text(
                "Minus et enim incidunt illo autem et pariatur quis voluptatem. A eaque adipisci vitae omnis qui sunt autem sunt ratione.",
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10)
                ),
                height: 100,
                width: 340,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(23.0),
                      child: Text(
                        "Get more for less with \n            the Bundles.",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "THE BUNDLES l",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Level Up Glute Bundle",
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80, top: 10),
                  child: Row(
                    children: [
                      Text(
                        "100",
                        style: GoogleFonts.poppins(
                            color: Colors.red,
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "\$ 80",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10,right: 18, top:20, bottom: 10),
              child: InkWell(
                onTap:(){
                 
                },
                child: Center(
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width/1.1,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 87, 87, 30),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "Home + Gym",
                        style:
                            GoogleFonts.poppins(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 230,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage("assets/images/balll.jpg"),
                              fit: BoxFit.fill)),
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
                                  ),
                                ),
                                Text(
                                  " Challenge.",
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(255, 87, 87, 30),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 130,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  "Home Based Program",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 8),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 230,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage("assets/images/balll.jpg"),
                              fit: BoxFit.fill)),
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
                                  ),
                                ),
                                Text(
                                  " Challenge.",
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(255, 87, 87, 30),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 130,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  "Home Based Program",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 8),
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
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "THE BUNDLES ll",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Level Up Glute Bundle",
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80, top: 10),
                  child: Row(
                    children: [
                      Text(
                        "100",
                        style: GoogleFonts.poppins(
                            color: Colors.red,
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "\$ 80",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
               left:10,right: 18, top: 20, bottom: 10),
              child: InkWell(
                onTap: (){
                 
                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 87, 87, 30),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Home + Gym",
                      style:
                          GoogleFonts.poppins(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 230,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage("assets/images/balll.jpg"),
                              fit: BoxFit.fill)),
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
                                  ),
                                ),
                                Text(
                                  " Challenge.",
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(255, 87, 87, 30),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 130,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  "Home Based Program",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 8),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 230,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage("assets/images/balll.jpg"),
                              fit: BoxFit.fill)),
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
                                  ),
                                ),
                                Text(
                                  " Challenge.",
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(255, 87, 87, 30),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 130,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  "Home Based Program",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 8),
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
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "THE BUNDLES lll",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Level Up Glute Bundle",
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70, top: 10),
                  child: Row(
                    children: [
                      Text(
                        "100",
                        style: GoogleFonts.poppins(
                            color: Colors.red,
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "\$ 150",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left:10,right: 18, top: 20, bottom: 10),
              child: InkWell(
                onTap: (){
                 
                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 87, 87, 30),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Home + Gym",
                      style:
                          GoogleFonts.poppins(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 230,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage("assets/images/balll.jpg"),
                              fit: BoxFit.fill)),
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
                                  ),
                                ),
                                Text(
                                  " Challenge.",
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(255, 87, 87, 30),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 130,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  "Home Based Program",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 8),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 230,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage("assets/images/balll.jpg"),
                              fit: BoxFit.fill)),
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
                                  ),
                                ),
                                Text(
                                  " Challenge.",
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(255, 87, 87, 30),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 130,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  "Home Based Program",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 8),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 230,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage("assets/images/balll.jpg"),
                              fit: BoxFit.fill)),
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
                                  ),
                                ),
                                Text(
                                  " Challenge.",
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(255, 87, 87, 30),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 130,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  "Home Based Program",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 8),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 230,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage("assets/images/balll.jpg"),
                              fit: BoxFit.fill)),
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
                                  ),
                                ),
                                Text(
                                  " Challenge.",
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(255, 87, 87, 30),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 130,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  "Home Based Program",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black, fontSize: 8),
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
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 10),
              child: Text(
                "Disclaimer ",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 5),
              child: Text(
                "Debitis dolores earum qui aliquid neque iure at. Deserunt nobis ea reprehenderit. Nobis tempore illum neque tenetur similique consectetur accusantium molestiae sed. Et voluptatem voluptate nobis doloremque consequuntur blanditiis aut quam et. Sed dolor et autem voluptatibus minima et eligendi ducimus.",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 18, right: 18, top: 10, bottom: 10),
              child: Text(
                "FAQ'S",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\u2022',
                    style: GoogleFonts.poppins(
                      color: Color.fromRGBO(255, 87, 87, 30),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "What is the difference between glute \nprogram at Home & Glutes program at the gym?.",
                    style: GoogleFonts.poppins(
                        color: Color.fromRGBO(255, 87, 87, 30), fontSize: 13),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 5),
              child: Text(
                "Debitis dolores earum qui aliquid neque iure at. Deserunt nobis ea reprehenderit. Nobis tempore illum neque tenetur similique consectetur accusantium molestiae sed. Et voluptatem voluptate nobis doloremque consequuntur blanditiis aut quam et. Sed dolor et autem voluptatibus minima et eligendi ducimus.",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
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
