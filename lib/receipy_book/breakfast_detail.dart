import 'package:fitvera/receipy_book/see_your.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
class Breakfast_Detail extends StatefulWidget {
  const Breakfast_Detail({Key? key}) : super(key: key);

  @override
  State<Breakfast_Detail> createState() => _Breakfast_DetailState();
}

class _Breakfast_DetailState extends State<Breakfast_Detail>   with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children:
          [
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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

                        Padding(
                        padding: const EdgeInsets.only(left: 20,top: 210),
                        child: Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white54
                              ),
                              child: Center(
                                child: Text("Breakfast",style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                ),),
                              ),
                            ),
                      ),
                        Container(
                          height: 70,
                          width: 350,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10,top: 10),
                                child: Text(
                                  "Crunchy Chicken Salad \nSeed & Pesto Dressing",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700
                                  ),),
                              ),
                              Positioned(
                                top: 25,
                                left: 310,
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white
                                  ),
                                  child: Center(
                                    child: Icon(
                                        FontAwesomeIcons.solidHeart,
                                    size: 25,
                                      color: Color.fromRGBO(255, 87, 87,30),

                                    ),
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
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 80,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child:  Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                              "Calories:",
                          style: GoogleFonts.poppins(
                            color: Color.fromRGBO(255, 87, 87,30),
                            fontSize:14,
                          ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "442",
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize:15,
                              ),
                            ),
                          ),
                        ],
                      ),
                  ),
                  ),
                Container(
                  height: 80,
                  width: 110,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child:Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            "Fat:",
                            style: GoogleFonts.poppins(
                              color: Color.fromRGBO(255, 87, 87,30),
                              fontSize:14,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                             "23g",
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize:15,
                              ),
                            ),
                        ],
                      ),
                  ),
                  ),
                Container(
                  height: 80,
                  width: 110,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child:Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            "Carbs:",
                            style: GoogleFonts.poppins(
                              color: Color.fromRGBO(255, 87, 87,30),
                              fontSize:14,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "22g",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:15,
                            ),
                          ),
                        ],
                      ),
                  ),
                  ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 80,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            "Prep Time:",
                            style: GoogleFonts.poppins(
                              color: Color.fromRGBO(255, 87, 87,30),
                              fontSize:14,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "5 Mints",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:16,
                            ),
                          ),
                        ],
                      ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            "Cook Time:",
                            style: GoogleFonts.poppins(
                              color: Color.fromRGBO(255, 87, 87,30),
                              fontSize:14,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "15 Mins",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:16,
                            ),
                          ),
                        ],
                      ),
                  ),
                  ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TabBar(
              controller: _tabController,
              unselectedLabelColor: Colors.black,
              labelColor:Color.fromRGBO(255, 87, 87,30),
              indicatorColor: Color.fromRGBO(255, 87, 87,30),

              tabs: [
                Tab(text: 'Ingredients'),
                Tab(text: 'Method'),
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
                  Padding(
                        padding: const EdgeInsets.only(left: 20,top: 20),
                        child: Text(
                          "\u2022 ¼ cup cashew or peanut butter \n\u2022 2 tablespoons white miso paste \n\u2022 2 tablespoons lime juice \n\u2022 1 teaspoon sesame oil \n\u2022 1 teaspoon grated ginger \n\u2022 2 to 5 tablespoons water, or as needed",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 14
                          ),),
                      ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Text(
                      "\u2022 6 to 7 cups shredded red and/or green cabbage \n\u2022 Mix of peppers: I used 3 Anaheim and 3 banana peppers; or use 1 red bell and 1 poblano. \n\u2022 2 scallions, chopped. \n\u2022 ½ cup chopped cilantro, including stems \n\u2022 ½ cup fresh basil, Thai basil, and/or mint. \n\u2022 2 Thai chiles or 1 serrano pepper, dicedSea salt. \n\u2022 ¼ cup toasted peanuts, pepitas, and/or sesame seeds.",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 14
                      ),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}
