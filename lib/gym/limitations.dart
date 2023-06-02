import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'add_limitations.dart';

class Limitations extends StatefulWidget {
  const Limitations({Key? key}) : super(key: key);

  @override
  State<Limitations> createState() => _LimitationsState();
}

class _LimitationsState extends State<Limitations> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor:Color.fromRGBO(29, 69, 100, 30),
          centerTitle: true,
          title: Text(
            "Limitations",style: GoogleFonts.poppins(
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
                    builder: (context) => Add_Limitations()));
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
                  padding: const EdgeInsets.only(left: 10,top: 20),
                  child: Text(
                    "Newly Added:",
                    style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20),
              child: InkWell(
                onTap:(){
                },
                child: Container(
                  width: 340,
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
                        left: 300,
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
                                size: 20,
                                 color: Color.fromRGBO(255, 87, 87,30),

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
                  width: 340,
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
                        left: 300,
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
                                size: 20,
                                 color: Color.fromRGBO(255, 87, 87,30),

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
                  width: 340,
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
                              "No Cold Drinks",style: GoogleFonts.poppins(
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
                        left: 300,
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
                                size: 20,
                                 color: Color.fromRGBO(255, 87, 87,30),

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
