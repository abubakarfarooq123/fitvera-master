import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Share extends StatefulWidget {
  const Share({Key? key}) : super(key: key);

  @override
  State<Share> createState() => _ShareState();
}

class _ShareState extends State<Share> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/lift.jpg",),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          height: 800,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 380),
                child: Center(
                  child: Text("Refer a Friend!",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                  ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Center(
                  child: Text(
                    "Gift a 7 day free trail of the FITVERA\n                 app to your friend.",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                  child: Text("Do it for her.",style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                  ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Center(
                  child: Text(
                    "Invite your friend to train with you and \n      give them a 7 day free trial of the \n                          FITVERA App.",
                    style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 35),
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(29, 69, 100, 30),
                  ),
                  child: Center(
                    child: Text("Share With a Friend",style: GoogleFonts.poppins(
                      color: Colors.white
                    ),),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 25),
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(255, 87, 87,30),
                  ),
                  child: Center(
                    child: Text("Complete Workout",style: GoogleFonts.poppins(
                        color: Colors.white
                    ),),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
