import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../home_navbar.dart';
import 'languages.dart';


class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //top bar color
      systemNavigationBarColor: Colors.black, //bottom bar color
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: Color.fromRGBO(29, 69, 100, 30),
      body: ClipRRect(
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(40.0),
          topRight: const Radius.circular(40.0),
        ),
        child: Container(
          height: 800.0,
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 40),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child:Icon(
                          Icons.cancel,
                          color: Colors.black54,
                          size: 35,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80,top: 40),
                      child: Text(
                        "Setting",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
            Padding(
                   padding: const EdgeInsets.only(top: 25),
                   child: InkWell(
                     onTap: (){
                       Navigator.pushReplacement(
                           context, MaterialPageRoute(builder: (context) => Languages()));

                     },
                     child: Container(
                       width: MediaQuery.of(context).size.width/1.1,
                       height: 90,
                       decoration: BoxDecoration(
                           color: Colors.grey.withOpacity(0.2),
                           borderRadius: BorderRadius.circular(10)
                       ),

                       child: Stack(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 10,top: 5),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 10,top: 15),
                                   child: Text(
                                     "Language :",style: GoogleFonts.poppins(
                                       color: Colors.black54,
                                       fontSize: 13
                                   ),
                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 10,top: 10),
                                   child: Text(
                                     "English",style: GoogleFonts.poppins(
                                       color: Colors.black,
                                       fontSize: 16,
                                     fontWeight: FontWeight.bold
                                   ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           Positioned(
                             left: 270,
                               top: 25,
                               child: Icon(
                                 Icons.arrow_right,
                                 size: 40,
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
      ),
    );
  }
}
