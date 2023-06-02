import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class See_Your extends StatefulWidget {
  const See_Your({Key? key}) : super(key: key);

  @override
  State<See_Your> createState() => _See_YourState();
}

class _See_YourState extends State<See_Your> {
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
              height: 30,
            ),

            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,top: 30),
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
                SizedBox(
                  width: 40,
                ),
                Image.asset(
                    "assets/images/logo.png",
                    height: 100,
                    width: 150,
                  ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 18, right: 18),
              child: Text(
                "Be Your Own Chef!",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 5),
              child: Text(
                "Simple, healthy & delicious recipes for you.",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
     Padding(
       padding: const EdgeInsets.only(left: 15),
       child: Container(
        child: Stack(
        children: [
        Image.asset(
        "assets/images/waa.png",
        fit: BoxFit.fill,
          height: 440.0,
          width: 330,
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: Text(
                    "101 Healthy Recipes",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: Text(
                    "\$99" + "\\mo",
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
                      "BreakFast",
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
                      "Lunch",
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
                      "Dinner",
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
                      "Snacks/Deserts",
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
                      "Pre & Post Workout",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 13),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 35, right: 15, top: 20),
                child: Text(
                  "Minus et enim incidunt illo autem et pariatur quis voluptatem. A eaque adipisci vitae omnis qui sunt \n                            autem sunt ratione. ",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                      color: Colors.white, fontSize: 11),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Center(
                child: InkWell(
                  onTap: () {
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
                        "I want this",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 9,
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
    ),
     )

    ],
        ),
      ),
    );
  }
}
