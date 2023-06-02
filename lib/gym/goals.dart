import 'package:fitvera/gym/cardio_strectch_details.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'add_goals.dart';
import 'meat_detail.dart';
class Goals extends StatefulWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  State<Goals> createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor:Color.fromRGBO(29, 69, 100, 30),
          centerTitle: true,
          title: Text(
            "Goals",style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 22,),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.add_circle,color: Colors.white,size: 26,),
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => Add_Goals()));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text("Newly Added:",style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,top:20),
              child: InkWell(
                onTap:(){
                },
                child: Container(
                  width: MediaQuery.of(context).size.width/1.1,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 20,
                        child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/wei.png"),
                                  fit: BoxFit.fill,
                                )
                            ),
                          ),
                      ),
                      Positioned(
                        left: 80,
                        top: 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Reduce Weight",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 14
                            ),),

                            Text("80kg to 70kg.",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 13
                            ),),


                          ],
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Positioned(
                        left: 240,
                        top: 20,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Center(
                              child: Icon(
                                FontAwesomeIcons.multiply,
                                color: Color.fromRGBO(255, 87, 87,30),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        left: 280,
                        top: 20,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Center(
                              child: Icon(
                                FontAwesomeIcons.check,
                                size: 20,
                                color: Color.fromRGBO(29, 69, 100, 30),
                              ),
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
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 20),
                  child: Text("Recent Goals:",style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,top:20),
              child: InkWell(
                onTap:(){
                },
                child: Container(
                  width: MediaQuery.of(context).size.width/1.1,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 20,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/wei.png"),
                                fit: BoxFit.fill,
                              )
                          ),
                        ),
                      ),
                      Positioned(
                        left: 80,
                        top: 30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Gain muscles.",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 14
                            ),),

                          ],
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Positioned(
                        left: 240,
                        top: 20,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Center(
                              child: Icon(
                                FontAwesomeIcons.multiply,
                                color: Color.fromRGBO(255, 87, 87,30),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        left: 280,
                        top: 20,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Center(
                              child: Icon(
                                FontAwesomeIcons.check,
                                size: 20,
                                color: Color.fromRGBO(29, 69, 100, 30),
                              ),
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
              padding: const EdgeInsets.only(left: 16,top:10),
              child: InkWell(
                onTap:(){
                },
                child: Container(
                  width: MediaQuery.of(context).size.width/1.1,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 20,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/wei.png"),
                                fit: BoxFit.fill,
                              )
                          ),
                        ),
                      ),
                      Positioned(
                        left: 80,
                        top: 30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Diet Plans",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 14
                            ),),

                          ],
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Positioned(
                        left: 240,
                        top: 20,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Center(
                              child: Icon(
                                FontAwesomeIcons.multiply,
                                color: Color.fromRGBO(255, 87, 87,30),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        left: 280,
                        top: 20,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Center(
                              child: Icon(
                                FontAwesomeIcons.check,
                                size: 20,
                                color: Color.fromRGBO(29, 69, 100, 30),
                              ),
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
    );
  }

}
