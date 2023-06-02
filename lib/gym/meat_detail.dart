import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Meat_detail extends StatefulWidget {
  const Meat_detail({Key? key}) : super(key: key);

  @override
  State<Meat_detail> createState() => _Meat_detailState();
}

class _Meat_detailState extends State<Meat_detail>  with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/base.png"),
                  fit: BoxFit.fill
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: (){
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 30,
                            ),
                        ),
                        InkWell(
                          onTap: (){
                            showDialog(context: context,
                                builder: (context){
                                  return showAlert();
                                });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 165,top: 10),
                            child: Container(
                              height: 30,
                              width: 125,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5,top: 5),
                                    child: Icon(Icons.info_outlined,color: Colors.white,size: 21,),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Center(
                                    child: Text(
                                      "Substitution List",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Text("Meat Based Plan",style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ],
              ),
            ),
            TabBar(
              controller: _tabController,
              labelColor:Color.fromRGBO(255, 87, 87,30),
              unselectedLabelColor: Colors.black,
              indicatorColor: Color.fromRGBO(255, 87, 87,30),
              tabs: [
                Tab(text: 'Loss Weight'),
                Tab(text: 'Gain Muscle'),
              ],
              labelStyle:
              GoogleFonts.poppins(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
              labelPadding: EdgeInsets.only(left: 60, right: 60),
              isScrollable: true,
            ),
            Container(
              height: 800,
              width: MediaQuery.of(context).size.width,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 20),
                        child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width/1.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              "Calories: 2,324 | Protein: 123g | Carbs: 334g | Fat: 88g",
                              style:GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 11.5
                              ) ,
                            ),
                          ),
                        ),
                      ),
                     SizedBox(
                       height: 20,
                     ),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         SizedBox(
                           width: 10,
                         ),
                         Expanded(
                           child: Container(
                             height: 200,
                             width: 120,
                             decoration: BoxDecoration(
                               color: Colors.grey.withOpacity(0.2),
                               borderRadius: BorderRadius.circular(10),
                             ),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 10,top: 10),
                                   child: Text(
                                     "Meal #1:",
                                     style: GoogleFonts.poppins(
                                         color: Colors.black,
                                         fontWeight: FontWeight.bold,
                                         fontSize: 14
                                     ),),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 10,top: 10),
                                   child: Text(
                                     "2 whole eggs, 1 cup of \nCooked oatmeal, \n1 cup of Fruit.",
                                     style: GoogleFonts.poppins(
                                         color: Colors.black,
                                         fontSize: 12
                                     ),),
                                 ),
                                 SizedBox(
                                   height: 25,
                                 ),
                                 Container(
                                   height: 80,
                                   width: 200,
                                   decoration: BoxDecoration(
                                       color: Color.fromRGBO(255, 87, 87,30),
                                       borderRadius: BorderRadius.only(bottomRight:Radius.circular(10),bottomLeft:Radius.circular(10),)
                                   ),
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.only(left: 5,top: 10),
                                         child: Text("Calories: 2,324 | Protein: 123g",style: GoogleFonts.poppins(
                                           color: Colors.white,
                                           fontSize: 10,
                                         ),),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.only(left: 5,top: 10),
                                         child: Text("Carbs: 334g | Fat: 88g",style: GoogleFonts.poppins(
                                           color: Colors.white,
                                           fontSize: 10,
                                         ),),
                                       ),
                                     ],
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                         SizedBox(
                           width: 20,
                         ),
                         Expanded(
                             child: Container(
                               height: 200,
                               width: 120,
                               decoration: BoxDecoration(
                                 color: Colors.grey.withOpacity(0.2),
                                 borderRadius: BorderRadius.circular(10),
                               ),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(left: 10,top: 10),
                                     child: Text(
                                       "Meal #2:",
                                       style: GoogleFonts.poppins(
                                         color: Colors.black,
                                         fontWeight: FontWeight.bold,
                                         fontSize: 14
                                       ),),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(left: 10,top: 10),
                                     child: Text(
                                       "2 whole eggs, 1 cup of \nCooked oatmeal, \n1 cup of Fruit.",
                                       style: GoogleFonts.poppins(
                                           color: Colors.black,
                                           fontSize: 12
                                       ),),
                                   ),
                                   SizedBox(
                                     height: 25,
                                   ),
                                   Container(
                                     height: 80,
                                     width: 200,
                                     decoration: BoxDecoration(
                                       color: Color.fromRGBO(255, 87, 87,30),
                                       borderRadius: BorderRadius.only(bottomRight:Radius.circular(10),bottomLeft:Radius.circular(10),)
                                     ),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       children: [
                                         Padding(
                                           padding: const EdgeInsets.only(left: 5,top: 10),
                                           child: Text("Calories: 2,324 | Protein: 123g",style: GoogleFonts.poppins(
                                             color: Colors.white,
                                             fontSize: 10,
                                           ),),
                                         ),
                                         Padding(
                                           padding: const EdgeInsets.only(left: 5,top: 10),
                                           child: Text("Carbs: 334g | Fat: 88g",style: GoogleFonts.poppins(
                                             color: Colors.white,
                                             fontSize: 10,
                                           ),),
                                         ),
                                       ],
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                         SizedBox(
                           width: 10,
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
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              height: 200,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Text(
                                      "Meal #1:",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14
                                      ),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Text(
                                      "2 whole eggs, 1 cup of \nCooked oatmeal, \n1 cup of Fruit.",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 12
                                      ),),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Container(
                                    height: 80,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 87, 87,30),
                                        borderRadius: BorderRadius.only(bottomRight:Radius.circular(10),bottomLeft:Radius.circular(10),)
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 10),
                                          child: Text("Calories: 2,324 | Protein: 123g",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 10),
                                          child: Text("Carbs: 334g | Fat: 88g",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              height: 200,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Text(
                                      "Meal #2:",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14
                                      ),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Text(
                                      "2 whole eggs, 1 cup of \nCooked oatmeal, \n1 cup of Fruit.",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 12
                                      ),),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Container(
                                    height: 80,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 87, 87,30),
                                        borderRadius: BorderRadius.only(bottomRight:Radius.circular(10),bottomLeft:Radius.circular(10),)
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 10),
                                          child: Text("Calories: 2,324 | Protein: 123g",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 10),
                                          child: Text("Carbs: 334g | Fat: 88g",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 20),
                        child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width/1.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              "Calories: 2,324 | Protein: 123g | Carbs: 334g | Fat: 88g",
                              style:GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 11.5
                              ) ,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              height: 200,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Text(
                                      "Meal #1:",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14
                                      ),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Text(
                                      "2 whole eggs, 1 cup of \nCooked oatmeal, \n1 cup of Fruit.",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 12
                                      ),),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Container(
                                    height: 80,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 87, 87,30),
                                        borderRadius: BorderRadius.only(bottomRight:Radius.circular(10),bottomLeft:Radius.circular(10),)
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 10),
                                          child: Text("Calories: 2,324 | Protein: 123g",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 10),
                                          child: Text("Carbs: 334g | Fat: 88g",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              height: 200,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Text(
                                      "Meal #2:",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14
                                      ),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Text(
                                      "2 whole eggs, 1 cup of \nCooked oatmeal, \n1 cup of Fruit.",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 12
                                      ),),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Container(
                                    height: 80,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 87, 87,30),
                                        borderRadius: BorderRadius.only(bottomRight:Radius.circular(10),bottomLeft:Radius.circular(10),)
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 10),
                                          child: Text("Calories: 2,324 | Protein: 123g",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 10),
                                          child: Text("Carbs: 334g | Fat: 88g",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
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
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              height: 200,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Text(
                                      "Meal #1:",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14
                                      ),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Text(
                                      "2 whole eggs, 1 cup of \nCooked oatmeal, \n1 cup of Fruit.",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 12
                                      ),),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Container(
                                    height: 80,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 87, 87,30),
                                        borderRadius: BorderRadius.only(bottomRight:Radius.circular(10),bottomLeft:Radius.circular(10),)
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 10),
                                          child: Text("Calories: 2,324 | Protein: 123g",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 10),
                                          child: Text("Carbs: 334g | Fat: 88g",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              height: 200,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Text(
                                      "Meal #2:",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14
                                      ),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Text(
                                      "2 whole eggs, 1 cup of \nCooked oatmeal, \n1 cup of Fruit.",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 12
                                      ),),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Container(
                                    height: 80,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 87, 87,30),
                                        borderRadius: BorderRadius.only(bottomRight:Radius.circular(10),bottomLeft:Radius.circular(10),)
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 10),
                                          child: Text("Calories: 2,324 | Protein: 123g",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 10),
                                          child: Text("Carbs: 334g | Fat: 88g",style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget showAlert() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Substitution List",
                style: GoogleFonts.poppins(
                    color: Color.fromRGBO(255, 87, 87,30),
                    fontWeight: FontWeight.bold,
                    fontSize: 14

                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8,top: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Meat Base Plan",style: GoogleFonts.poppins(
                            color: Color.fromRGBO(255, 87, 87,30),
                            fontSize: 11,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Vegetarian Plan",style: GoogleFonts.poppins(
                            color: Color.fromRGBO(255, 87, 87,30),
                            fontSize: 11,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Nisi consectetur ut praesentium dolorem provident. Beatae velit possimus esse aperiam ut perferendis odit qui consequuntur. Reprehenderit laudantium assumenda. Omnis est sed quo cupiditate sit eos eius. Corrupti dolorum provident asperiores et ea voluptatem.",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 12
              ),),
            SizedBox(
              height: 5,
            ),
            Text("Soluta quaerat molestiae. Et voluptate doloremque aut laboriosam eum qui rerum. Omnis optio et eaque aut deserunt blanditiis quibusdam voluptatem. Modi quis necessitatibus cumque soluta ipsam eius voluptas maiores quod. Blanditiis qui velit cupiditate voluptatum molestiae illo est officia in. At rerum est.",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 12
              ),),
            SizedBox(
              height: 5,
            ),
            Text("Fruits:",style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14
            ),),
            Text("Fuga sequi atque. Atque laboriosam labore error ipsam quo quam aut. Rerum laborum tempora dolores dolorem magnam ut quisquam. Similique est et quidem omnis. Ut ut est eveniet quae cum molestias ut aut qui.",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 12
              ),),
            SizedBox(
              height: 5,
            ),
            Text("Proteins:",style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14
            ),),
            Text("Accusamus exercitationem temporibus aut sed est ut laboriosam voluptatibus. Libero laudantium occaecati molestiae numquam. Ut laudantium eum. Iure delectus at pariatur sint unde delectus non delectus perspiciatis.",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 12
              ),),
          ],
        ),
      ),
      actions: [
        Center(
          child: InkWell(
            onTap:(){
              Navigator.of(context).pop();
            },
            child: Container(
              height: 40,
              width: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(255, 87, 87,30),

              ),
              child: Center(
                child: Text(
                  "Okay",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

}
