import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'otp.dart';


class Forget extends StatefulWidget {
  const Forget({Key? key}) : super(key: key);

  @override
  _ForgetState createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 50),
            child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 30,
                      fontWeight: FontWeight.w900
                    ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Text(
              "Enter your email below or login \n with an other account.",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                fontWeight: FontWeight.bold
              ),),
          ),
          Container(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 800,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10,top: 20),
                                child: Text("Email",style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: Column(children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                      vertical: 8.0,
                                    ),
                                    child: TextFormField(
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        hintText: 'Email Address',
                                        errorStyle: TextStyle(
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 40),
                                  Container(
                                    height: 50.0,
                                    width: MediaQuery.of(context).size.width/1.1,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.grey,
                                    ),
                                    margin: EdgeInsets.only(left: 80.0, right: 80, top: 0),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    OtpScreen()));

                                      },
                                      child: Text(
                                        "Try another way",
                                        style: GoogleFonts.poppins(color: Colors.white, fontSize: 13.0,fontWeight: FontWeight.bold),
                                      ),

                                    ),
                                  ),
                                  SizedBox(height: 60),
                                  Container(
                                    height: 50.0,
                                    width: 400,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      color: Color.fromRGBO(255, 87, 87,30),
                                    ),
                                    margin: EdgeInsets.only(left: 60.0, right: 60, top: 0),
                                    child: TextButton(
                                      onPressed: () {

                                      },
                                      child: Text(
                                        "Send Email",
                                        style: GoogleFonts.poppins(color: Colors.white, fontSize: 13.0,fontWeight: FontWeight.bold),
                                      ),

                                    ),
                                  ),
                                ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]
                ),
              ),
            ),
          ],
      ),
    );
  }
}