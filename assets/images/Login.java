import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/home/home_screen.dart';
import 'package:pos/user/forgot.dart';
import 'package:pos/user/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //top bar color
      systemNavigationBarColor: Colors.black, //bottom bar color
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
          children: <Widget>[
            Container(
              height: 260,
              child: Center(
                child: Image.asset(
                  "assets/images/login.png",
                  height: 300,
                  width: 300,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0)),
              child: Container(
                height: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).size.height / 3.071,
                width: double.infinity,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: new Form(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: TextFormField(
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    hintText: 'Enter email id',
                                    errorStyle: GoogleFonts.roboto(
                                      color: Colors.redAccent,
                                      fontSize: 15.0,
                                    ),
                                    icon: Icon(
                                      FontAwesomeIcons.envelope,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: TextFormField(
                                  autofocus: false,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    errorStyle: GoogleFonts.roboto(
                                      color: Colors.redAccent,
                                      fontSize: 15.0,
                                    ),
                                    icon: Icon(
                                      FontAwesomeIcons.lock,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              Center(
                                child: Container(
                                  height: 40.0,
                                  width: 340.0,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  // ignore: deprecated_member_use
                                  child: TextButton(
                                    onPressed: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomeScreen()));
                                    },
                                    child: Text(
                                      'Login',
                                      style: GoogleFonts.roboto(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Forget()));
                                  },
                                  child: Text(
                                    'Forgot Password?',
                                    style: GoogleFonts.roboto(
                                      fontSize: 14.0,
                                      color: Colors.blue,
                                    ),
                                  ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Don't have an account? ",
                                      style: GoogleFonts.roboto(
                                          color: Colors.grey, fontSize: 14),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RegisterPage()));
                                      },
                                      child: Text(
                                        "Sign Up",
                                        style: GoogleFonts.roboto(
                                            color: Colors.blue,
                                            fontSize: 14),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}