import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/home.dart';
import '../home/home_navbar.dart';
import '../home/hot_program/hot_program.dart';
import '../home/hot_program/hot_program.dart';
import 'intro_1.dart';

class Intro_2 extends StatelessWidget {
  const Intro_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      'assets/images/aa.png',
      'assets/images/aa.png',
      'assets/images/aa.png',
    ];
    List<String> textList = ['Bronze', 'Gold', 'Silver', 'Premium'];
    List<String> textList1 = ['\$ 80', '\$ 80', '\$ 90', '\$ 150'];
    List<String> buttonTextList = [
      'I want this',
      'I want this',
      'I want this',
    ];
    List<Function> buttonActionList = [
      () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Hot_program())),
      () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Home())),
      () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Home())),
      () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Home())),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                "assets/images/logo.png",
                height: 100,
                width: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 12, right: 18),
              child: Text(
                "Choose Programs.",
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
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 450.0,
                autoPlay: true,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enlargeCenterPage: true,
              ),
              items: imageList.asMap().entries.map((entry) {
                int index = entry.key;
                String imagePath = entry.value;
                String text = textList[index];
                String text1 = textList1[index];
                String buttonText = buttonTextList[index];
                Function buttonAction = buttonActionList[index];
                return Container(
                  child: Stack(
                    children: [
                      Image.asset(
                        imagePath,
                        fit: BoxFit.fill,
                        height: 450.0,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Center(
                                child: Text(
                                  text,
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                "Recommended",
                                style: GoogleFonts.poppins(
                                  color: Colors.grey.shade400,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(
                                child: Text(
                                  text1 + "\\M",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    '\u2713',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Culpa placeat quia sed.",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    '\u2713',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Ea id ab ea rem maiores recusandae.",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    '\u2713',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Quasi deserunt quia.",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    '\u2713',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Numquam quasi rerum numquam.",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 5, top: 10),
                              child: Text(
                                "Minus et enim incidunt illo autem et pariatur quis voluptatem. A eaque adipisci vitae omnis qui sunt autem sunt ratione. ",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 13,
                                fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Hot_program()));

                                },
                                child: Container(
                                  height: 35,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromRGBO(255, 87, 87, 30),
                                  ),
                                  child: Center(
                                    child: Text(
                                      buttonText,
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
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
                );
              }).toList(),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Intro_1()));

                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(29, 69, 100, 30),
                  ),
                  child: Center(
                    child: Text("Click here before you Purchase",style: GoogleFonts.poppins(
                      color: Colors.white,
                    fontWeight: FontWeight.bold
                    ),),
                  ),
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
