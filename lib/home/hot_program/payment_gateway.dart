import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'card_info.dart';

class Payment_gateway extends StatefulWidget {
  const Payment_gateway({Key? key}) : super(key: key);

  @override
  State<Payment_gateway> createState() => _Payment_gatewayState();
}

class _Payment_gatewayState extends State<Payment_gateway> {
  List<String> menu = ['Debit/Credit Card'];
  String selected = '';
  var setvalue;
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
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 5),
                    child: Text(
                      "Payment Gateway",
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
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 30),
                child: Text(
                  "Payment Methods:",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 14, right: 14, top: 12),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width/1.1,
                            height: 60,
                            padding: EdgeInsets.only(left: 16, right: 16),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(5)),
                            child: DropdownButton(
                              hint: Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 35),
                              ),
                              isExpanded: true,
                              icon: Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 40,
                                ),
                              ),
                              underline: SizedBox(),
                              value: setvalue,
                              onChanged: (newValue) {
                                setState(() {
                                  setvalue = newValue;
                                });
                              },
                              items: menu.map((String value) {
                                return new DropdownMenuItem<String>(
                                  value: value,
                                  child: new Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                          Text(
                            selected,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //     labelText: 'Enter your text',
                  //     border: OutlineInputBorder(
                  //       borderSide: BorderSide(
                  //         color: Colors.blue,
                  //         width: 2.0,
                  //       ),
                  //       borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  //     ),
                  //   ),
                  // ),
                 Padding(
                   padding: const EdgeInsets.only(left: 16),
                   child: Text(
                        "Your Cards",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                 ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap:(){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => Card_info()));

                          },
                          child: Container(
                            height: 180,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.add_circle,
                                color: Color.fromRGBO(29, 69, 100, 30),
                                  size: 50,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: Container(
                            height: 110,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage("assets/images/card.png"),
                                fit: BoxFit.fill
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,top: 10),
                    child: Text(
                      "Order Details:",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,top:10),
                    child: Container(
                      width: MediaQuery.of(context).size.width/1.1,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Container(
                              height: 60,
                              width: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/imaa.png"),
                                  fit: BoxFit.fill,
                                )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Home Program",style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16
                                ),),
                                Text("Highly Intensity Training",style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 12
                                ),),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,top: 10),
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
                      width: MediaQuery.of(context).size.width/1.1,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child:
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Date:",style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 12
                                ),),
                                Text("20 October 2021 - Wednesday",style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),),

                              ],
                            ),
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,top:10),
                    child: Container(
                      width: MediaQuery.of(context).size.width/1.1,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child:
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Time:",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12
                            ),),
                            Text("9:30 AM",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 16,top: 10),
                child: Text(
                  "Cost:",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Container(
                width: MediaQuery.of(context).size.width/1.1,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child:
                Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 10,
                        child: Text("Estimated Cost:",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 12
                        ),),
                      ),
                      Positioned(
                        top:7,
                        left: 270,
                        child: Text("\$ 300",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),),
                      ),

                    ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 18, top: 30, bottom: 20),
              child: InkWell(
                onTap: (){
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
                      "Start Program",
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
    );
  }

  }
