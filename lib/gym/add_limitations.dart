import 'package:fitvera/gym/cardio_strectch_details.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'meat_detail.dart';
class Add_Limitations extends StatefulWidget {
  const Add_Limitations({Key? key}) : super(key: key);

  @override
  State<Add_Limitations> createState() => _Add_LimitationsState();
}

class _Add_LimitationsState extends State<Add_Limitations> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor:Color.fromRGBO(29, 69, 100, 30),
          centerTitle: true,
          title: Text(
            "Add Limitations",style: GoogleFonts.poppins(
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
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16,top:10),
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
                                image: AssetImage("assets/images/cation.png"),
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
                              "No Cold Drink",style: GoogleFonts.poppins(
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
                        left: 260,
                        top: 20,
                        child: Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Center(
                              child: Text("Add",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize:11,
                              ),)
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
                                image: AssetImage("assets/images/cation.png"),
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
                              "No Sugar",style: GoogleFonts.poppins(
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
                        left: 260,
                        top: 20,
                        child: Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Center(
                              child: Text("Add",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize:11,
                              ),)
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
                                image: AssetImage("assets/images/cation.png"),
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
                              "Sleep less than 8 hours",style: GoogleFonts.poppins(
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
                        left: 260,
                        top: 20,
                        child: Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Center(
                              child: Text("Add",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize:11,
                              ),)
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
                                image: AssetImage("assets/images/cation.png"),
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
                              "No Cold Drink",style: GoogleFonts.poppins(
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
                        left: 260,
                        top: 20,
                        child: Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: Center(
                              child: Text("Add",style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize:11,
                              ),)
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
