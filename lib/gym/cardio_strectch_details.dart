import 'package:fitvera/gym/cardio_strech_screen.dart';
import 'package:fitvera/home/home_navbar.dart';
import 'package:fitvera/home/profile/fvrt/timer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Cardio_stretch_detail extends StatefulWidget {
  const Cardio_stretch_detail({Key? key}) : super(key: key);

  @override
  State<Cardio_stretch_detail> createState() => _Cardio_stretch_detailState();
}

class _Cardio_stretch_detailState extends State<Cardio_stretch_detail>  with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
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
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 5),
                    child: Text(
                      "Cardio & Stretch",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TabBar(
              controller: _tabController,
              unselectedLabelColor: Colors.black,
              labelColor:Color.fromRGBO(255, 87, 87,30),
              indicatorColor: Color.fromRGBO(255, 87, 87,30),

              tabs: [
                Tab(text: 'HITT'),
                Tab(text: 'Running'),
              ],
              labelStyle:
              GoogleFonts.poppins(color: Color.fromRGBO(255, 87, 87,30),
                  fontSize: 16,fontWeight: FontWeight.bold),
              labelPadding: EdgeInsets.only(left: 60, right: 60),
              isScrollable: true,
            ),
            Container(
              height: 500,
              width: MediaQuery.of(context).size.width,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40,top: 20),
                        child: Container(
                          height: 200,
                          width: 280,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/scout.png"),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Text(
                          "Lower Body Warm Up",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 18
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Text(
                          "Description:",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 14
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10,right: 10),
                        child: Text(
                          "Debitis dolores earum qui aliquid neque iure at. Deserunt nobis ea reprehenderit. Nobis tempore illum neque tenetur similique consectetur accusantium molestiae sed. Et voluptatem voluptate nobis doloremque consequuntur blanditiis aut quam et. Sed dolor et autem voluptatibus minima et eligendi ducimus.",
                          textAlign:TextAlign.start,
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12
                          ),
                        ),
                      ),
                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40,top: 20),
                        child: Container(
                          height: 200,
                          width: 280,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/scout.png"),
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Text(
                          "Lower Body Warm Up",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 18
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Text(
                          "Description:",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 14
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10,right: 10),
                        child: Text(
                          "Debitis dolores earum qui aliquid neque iure at. Deserunt nobis ea reprehenderit. Nobis tempore illum neque tenetur similique consectetur accusantium molestiae sed. Et voluptatem voluptate nobis doloremque consequuntur blanditiis aut quam et. Sed dolor et autem voluptatibus minima et eligendi ducimus.",
                          textAlign:TextAlign.start,
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 18, top: 100, bottom: 10),
              child: InkWell(
                onTap:(){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => StopwatchApp()));
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 87, 87, 30),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Start Program",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
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