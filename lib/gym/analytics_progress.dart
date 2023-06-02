import 'package:fitvera/gym/weight_nav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bar_chart/bar_graph.dart';
import 'goals.dart';
import 'limitations.dart';
class Analytics_Progress extends StatefulWidget {
  const Analytics_Progress({Key? key}) : super(key: key);

  @override
  State<Analytics_Progress> createState() => _Analytics_ProgressState();
}

class _Analytics_ProgressState extends State<Analytics_Progress> {
  List<double> weeklySummary =[
    4.40,
    2.50,
    42.42,
    10.50,
    100.20,
    88.99,
    90.0,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Color.fromRGBO(29, 69, 100, 30),
          centerTitle: true,
          title: Text(
            "Aanlytics",
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 24,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.info,
                color: Colors.white,
                size: 24,
              ),
              onPressed: () {
                showDialog(context: context,
                    builder: (context){
                      return showAlert();

                    });
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text("Workout Progress",style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight:FontWeight.bold,
                    fontSize: 22,
                  ),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10,top: 20 ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Weekly",style: GoogleFonts.poppins(
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
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Daily",style: GoogleFonts.poppins(
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
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Monthly",style: GoogleFonts.poppins(
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
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Yearly",
                          style: GoogleFonts.poppins(
                              color: Color.fromRGBO(255, 87, 87,30),
                              fontSize: 11,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 300,
                width:320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Center(
                  child: Container(
                    height:280,
                    width: 300,
                    child: MyBarGraph(
                      weeklySummary: weeklySummary,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text("Weight Tracking:",style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight:FontWeight.bold,
                    fontSize: 22,
                  ),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10,top: 20 ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Weekly",style: GoogleFonts.poppins(
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
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Daily",style: GoogleFonts.poppins(
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
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Monthly",style: GoogleFonts.poppins(
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
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Yearly",
                          style: GoogleFonts.poppins(
                              color: Color.fromRGBO(255, 87, 87,30),
                              fontSize: 11,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height:20
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 180,
                  width:150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Text("Before",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 10),
                        child: Text("50 Kg",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                      SizedBox(
                        height: 38,
                      ),
                      Image.asset("assets/images/redline.png"),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 180,
                  width:150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Text("After",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 10),
                        child: Text("75 Kg",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                      SizedBox(
                        height: 38,
                      ),
                      Image.asset("assets/images/blueline.png"),
                    ],
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text("Strength Tracking",style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight:FontWeight.bold,
                    fontSize: 22,
                  ),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10,top: 20 ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Weekly",style: GoogleFonts.poppins(
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
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Daily",style: GoogleFonts.poppins(
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
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Monthly",style: GoogleFonts.poppins(
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
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Yearly",
                          style: GoogleFonts.poppins(
                              color: Color.fromRGBO(255, 87, 87,30),
                              fontSize: 11,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 20),
              child: Container(
                height: 300,
                width:320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Center(
                  child: Container(
                    height:280,
                    width: 300,
                    child: MyBarGraph(
                      weeklySummary: weeklySummary,
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
                "Analytics Information",
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
                    InkWell(
                      onTap:(){},
                      child: Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text("Analytics",style: GoogleFonts.poppins(
                              color: Color.fromRGBO(255, 87, 87,30),
                              fontSize: 11,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap:(){
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => Goals()));
                      },
                      child: Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text("Goals",style: GoogleFonts.poppins(
                              color: Color.fromRGBO(255, 87, 87,30),
                              fontSize: 11,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap:(){
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => Limitations()));
                      },
                      child: Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text("Limitations",style: GoogleFonts.poppins(
                              color: Color.fromRGBO(255, 87, 87,30),
                              fontSize: 11,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap:(){
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => Weight_Nav()));
                      },
                      child: Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text("Weight",style: GoogleFonts.poppins(
                              color: Color.fromRGBO(255, 87, 87,30),
                              fontSize: 11,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
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
            Text("Fuga sequi atque. Atque laboriosam labore error ipsam quo quam aut. Rerum laborum tempora dolores dolorem magnam ut quisquam. Similique est et quidem omnis. Ut ut est eveniet quae cum molestias ut aut qui.",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 12
              ),),
            SizedBox(
              height: 5,
            ),
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
