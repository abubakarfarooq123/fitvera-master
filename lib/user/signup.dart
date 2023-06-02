import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/profile/about_you.dart';
import '../onboarding/intro_1.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscureText = true;
  bool _obscureText1 = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 410,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/gy.png"),
                      fit: BoxFit.fill
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12,top: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Login()));

                    },
                      child: Text("Login",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                      ),),),
                    TextButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SignUp()));

                    }, child: Text("Sign Up",style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                    ),),),
                  ],

                ),
              ),
            ),
        Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text("Hello, Rookies",style: GoogleFonts.poppins(
                        color: Color.fromRGBO(255, 87, 87,30),
                        fontSize: 23,
                        fontWeight: FontWeight.w900
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text("Enter your information below or \n"
                        "login with a other account.",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 10),
                    child: Text("Email",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 10),
                    child: new Form(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 18,right: 18,bottom: 15),
                            child: TextFormField(
                              autofocus: false,
                              decoration: InputDecoration(
                                hintText: 'Enter Email',
                                errorStyle: GoogleFonts.roboto(
                                  color: Colors.redAccent,
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18,right: 18,bottom: 15),
                            child: TextFormField(
                              autofocus: false,
                              obscureText: _obscureText,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                errorStyle: GoogleFonts.roboto(
                                  color: Colors.redAccent,
                                  fontSize: 15.0,
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText ? Icons.visibility_off : Icons.visibility,
                                    color: Color.fromRGBO(255, 87, 87,30),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18,right: 18),
                            child: TextFormField(
                              autofocus: false,
                              obscureText: _obscureText1,
                              decoration: InputDecoration(
                                hintText: 'Confirm Password',
                                errorStyle: GoogleFonts.roboto(
                                  color: Colors.redAccent,
                                  fontSize: 15.0,
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText1 ? Icons.visibility_off : Icons.visibility,
                                    color: Color.fromRGBO(255, 87, 87,30),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText1 = !_obscureText1;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(
                                FontAwesomeIcons.apple,
                                color: Colors.black,
                                size: 45,
                              )),
                              Padding(
                                padding: const EdgeInsets.only(left: 20,top: 5),
                                child: IconButton(
                                    onPressed: (){},
                                    icon: Icon(
                                  FontAwesomeIcons.google,
                                  color: Colors.black,
                                  size: 40,
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 80,top: 5),
                                child: Center(
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  About_you()));
                                    },
                                    child: Container(
                                      height: 60.0,
                                      width: 130,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 87, 87,30),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      // ignore: deprecated_member_use
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[Text(
                                          'Sign Up',
                                          style: GoogleFonts.roboto(
                                              fontSize: 15.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(Icons.arrow_forward_ios_rounded,size: 16,color: Colors.white,),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );

  }
}