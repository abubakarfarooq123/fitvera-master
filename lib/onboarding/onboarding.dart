import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../user/login.dart';
import '../user/signup.dart';
import 'content_model.dart';




class Onbording extends StatefulWidget {
  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(

                            child: Image.asset(contents[i].image1,),
                        ),
                        Image.asset(
                          contents[i].image,
                          height: 75,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            contents[i].title,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,top: 8),
                          child: Text(
                            contents[i].discription,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,

                            ),

                          ),
                        )
                      ],
                  );
                },
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                      (index) => buildDot(index, context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,bottom: 12,top: 8),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Login()));

                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 87, 87,30),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child:Center(
                            child: Text("Log In",style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                            ),),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SignUp()));
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 87, 87,30),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child:Center(
                            child: Text("Sign Up",style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16
                            ),),
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
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}