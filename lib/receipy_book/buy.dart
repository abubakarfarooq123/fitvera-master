import 'package:fitvera/receipy_book/see_your.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Buy extends StatefulWidget {
  const Buy({Key? key}) : super(key: key);

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children:[
                Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/food.png"),
                    fit: BoxFit.fill
                  )
                ),
              ),
                Positioned.fill(
                    child: Container(
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 18,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,top: 320),
                        child: Text(
                          "Crunchy Chicken Salad \nSeed & Pesto Dressing",
                          style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                            fontWeight: FontWeight.w700
                        ),),
                      ),
                    ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,top: 30),
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

              ],
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(255, 87, 87,30),
                      ),
                      child: Center(
                        child: Image.asset("assets/images/ock.png"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text("Buy Now!",style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Text("For Unlimited Access",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18
                    ),
                    ),
                  ),
                ],
              ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: InkWell(
                onTap:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => See_Your()));
                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(255, 87, 87,30),

                  ),
                  child: Center(
                    child: Text(
                      "See Your Option",
                      style: GoogleFonts.poppins(
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
      ),
    );

 }
}
