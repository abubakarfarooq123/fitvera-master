import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class View_Bio extends StatefulWidget {
  const View_Bio({Key? key}) : super(key: key);

  @override
  State<View_Bio> createState() => _View_BioState();
}

class _View_BioState extends State<View_Bio> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/pic.jpg",),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                    ),
                    child: Center(
                      child:  Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: Icon(Icons.arrow_back_ios,size: 22,color: Colors.black54,),
                      ),

                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 260),
              child: Container(
                height: 450,
                width: MediaQuery.of(context).size.width/1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.withOpacity(0.5)
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                        radius: 36,
                        backgroundImage: AssetImage('assets/images/profile1.jpg'),
                      ),
                    Text("Danyele",style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 27
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 20,top: 15),
                      child: Text("Debitis dolores earum qui aliquid neque iure at. Deserunt nobis ea reprehenderit. Nobis tempore illum neque tenetur similique consectetur accusantium molestiae sed. Et voluptatem voluptate nobis doloremque consequuntur blanditiis aut quam et. Sed dolor et autem voluptatibus minima et eligendi ducimus.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 13
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40,right: 40,top: 16),
                      child: Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text("STRENGHT &\nENDURANCE",style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset("assets/images/combo.png",height: 40,),
                  ],
                ),
              ),
            ),
          ],
        ),
          ),
    );
  }
}
