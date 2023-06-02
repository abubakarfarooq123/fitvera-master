import 'package:fitvera/home/hot_program/payment_gateway.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Card_info extends StatefulWidget {
  const Card_info({Key? key}) : super(key: key);

  @override
  State<Card_info> createState() => _Card_infoState();
}

class _Card_infoState extends State<Card_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left:15,top: 40),
                child:  InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 20),
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("assets/images/card2.png"),
                        fit: BoxFit.fill
                    )
                ),
              ),
            ),
           Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width/1.1,
                            height: 58,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)
                            ),

                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Card Holder Name:',
                                labelStyle: GoogleFonts.poppins(
                                  color: Colors.black54,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(0.2),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width/1.1,
                            height: 58,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10)
                            ),

                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Card Number:',
                                labelStyle: GoogleFonts.poppins(
                                  color: Colors.black54,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(0.2),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Container(
                                width: 280,
                                height: 58,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(10)
                                ),

                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Expiry(MM/YY)',
                                    labelStyle: GoogleFonts.poppins(
                                      color: Colors.black54,
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.2),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            ),
                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Container(
                                width: 280,
                                height: 58,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(10)
                                ),

                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'CVC:',
                                    labelStyle: GoogleFonts.poppins(
                                      color: Colors.black54,
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.2),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 18, top: 150, bottom: 20),
                          child: InkWell(
                            onTap: (){
                              showDialog(
                                  context: context,
                                  builder: (context) => Dialog(
                                  shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(20.0),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                height: 400,
                                width: MediaQuery.of(context).size.width/1.1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Center(
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("assets/images/tick.png"),
                                            fit: BoxFit.fill
                                          )
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15,top: 5),
                                      child: Container(
                                        height: 220,
                                        width: 250,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.grey.withOpacity(0.3),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 12,top: 5),
                                              child: Text(
                                                "Program:",
                                                style: GoogleFonts.poppins(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 16,top:5),
                                              child: Container(
                                                width: 220,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 8,top: 5),
                                                      child: Container(
                                                        height: 40,
                                                        width: 40,
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                              image: AssetImage("assets/images/imaa.png"),
                                                              fit: BoxFit.fill,
                                                            )
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 16,top: 5),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text("Home Program",style: GoogleFonts.poppins(
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.w700,
                                                              fontSize: 9
                                                          ),),
                                                          Text("Highly Intensity Training",style: GoogleFonts.poppins(
                                                              color: Colors.black,
                                                              fontSize: 9
                                                          ),),

                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 16),
                                              child: Text(
                                                "Schedule:",
                                                style: GoogleFonts.poppins(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 16,top:10),
                                              child: Container(
                                                width: 220,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child:
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 20,top: 5),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Date:",style: GoogleFonts.poppins(
                                                          color: Colors.black,
                                                          fontSize: 14
                                                      ),),
                                                      Text("20 October 2021 - Wednesday",style: GoogleFonts.poppins(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.bold
                                                      ),),

                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 16,top:5),
                                              child: Container(
                                                width: 220,
                                                height: 45,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child:
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 20,top: 5),
                                                  child: Stack(
                                                    children: [
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text("Time:",style: GoogleFonts.poppins(
                                                              color: Colors.black,
                                                              fontSize: 14
                                                          ),),
                                                          Text("9:30 AM",style: GoogleFonts.poppins(
                                                              color: Colors.black,
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.bold
                                                          ),),
                                                        ],
                                                      ),
                                                      Positioned(
                                                        left: 170,
                                                          top: 7,
                                                          child: Icon(
                                                              FontAwesomeIcons.solidBell,
                                                          size: 22,
                                                          color: Colors.deepPurple,
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
                                    Padding(
                                      padding: const EdgeInsets.only(left: 40,top: 12),
                                      child: InkWell(
                                        onTap: (){
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 200,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(255, 87, 87, 30),
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Okay",
                                              style:
                                              GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold

                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              ),
                              );
                             },
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width/1.1,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 87, 87, 30),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "Add Card",
                                  style:
                                  GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold

                                  ),
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
