import 'package:fitvera/user/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController textEditingController = TextEditingController();
  // Change this value to the length of your OTP code
  int _otpLength = 6;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 60),
              child: Text(
                "Varification",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w900
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 20),
              child: Text(
                "Check your email. We ha've sent you \n the PIN at your email.",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                ),),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 40),
              child: PinCodeTextField(
                controller: textEditingController,
                length: _otpLength,
                obscureText: true,
                keyboardType: TextInputType.number,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.underline,
                  selectedFillColor: Colors.transparent,
                  inactiveFillColor: Colors.transparent,
                  activeFillColor: Colors.transparent,
                  activeColor: Colors.black,
                  inactiveColor: Colors.grey,
                  selectedColor: Colors.blueAccent,
                  fieldHeight: 50,
                  fieldWidth: 40,
                ),
                animationDuration: Duration(milliseconds: 300),
                onChanged: (value) {},
                onCompleted: (value) {
                  print("Completed");
                },  appContext: context,
              ),
            ),
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(255, 87, 87,30),
              ),
              margin: EdgeInsets.only(left: 80.0, right: 80, top: 0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Forget()));

                },
                child: Text(
                  "Verify",
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
                color: Colors.grey,
              ),
              margin: EdgeInsets.only(left: 60.0, right: 60, top: 0),
              child: TextButton(
                onPressed: () {

                },
                child: Text(
                  "Did you receive any code?",
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 13.0,fontWeight: FontWeight.bold),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}