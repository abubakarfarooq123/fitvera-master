import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../BMR/bmr_calculator.dart';
import 'cardio_strech_screen.dart';
import 'day_detail.dart';
import 'nuitrition.dart';


class Start_open_program extends StatefulWidget {
  const Start_open_program({Key? key}) : super(key: key);

  @override
  State<Start_open_program> createState() => _Start_open_programState();
}

class _Start_open_programState extends State<Start_open_program> {
  DateTime _selectedDate = DateTime.now();


  TextEditingController _dateController = TextEditingController();

  Future<void> _showDatePicker(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    height: 50.0,
                    color: Colors.grey[200],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.close),
                        ),
                        Text(
                          'Select Date',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 48.0),
                      ],
                    ),
                  ),
                  Expanded(
                    child: DatePickerWidget(
                      initDateTime: _selectedDate,
                      minDateTime: DateTime(1900),
                      maxDateTime: DateTime(2100),
                      dateFormat: 'dd-MM-yyyy',

                      pickerTheme: DateTimePickerTheme(

                        confirm: Container(
                          height: 60,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text("Confirm",style: GoogleFonts.poppins(
                                color: Colors.white
                            ),),
                          ),
                        ),

                        cancel:Container(
                          height: 60,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.withOpacity(0.4),
                          ),
                          child: Center(
                            child: Text("Cancel",style: GoogleFonts.poppins(
                                color: Colors.black54
                            ),),
                          ),
                        ),
                        backgroundColor: Colors.white,
                        itemTextStyle: TextStyle(color: Colors.black),
                        pickerHeight: 200.0,


                      ),
                      onCancel: () {
                        Navigator.pop(context, null);
                      },
                      onConfirm: (DateTime? newDate, List<int>? selectedIndexes) {
                        if (newDate != null) {
                          setState(() {
                            _selectedDate = newDate;
                            _dateController.text = DateFormat('dd-MM-yyyy').format(newDate);
                          });
                        }
                      },
                    ),
                  ),

                ],
              ),
            ),

          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 360,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/aq1.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 30),
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
                            padding: const EdgeInsets.only(left: 180),
                            child: InkWell(
                              onTap: (){
                                showDialog(context: context,
                                    builder: (context){
                                      return showAlert();

                                    });
                              },
                              child: Container(
                                height: 30,
                                width: 110,
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
                                        "Introduction",
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
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          size: 34,
                          color: Color.fromRGBO(255, 87, 87,30),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: Text(
                  "Bikini Glute",
                  style: GoogleFonts.poppins(
                      color: Colors.grey.withOpacity(0.85),
                      fontSize: 18
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    "Program",
                    style: GoogleFonts.poppins(
                        color: Colors.grey.withOpacity(0.85),
                        fontSize: 16
                    ),
                  ),
                  Text(
                    " Home",
                    style: GoogleFonts.poppins(
                        color: Color.fromRGBO(255, 87, 87, 30),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  GestureDetector(
                    onTap: (){
                      _showDatePicker(context);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.calendar_today,
                          color: Color.fromRGBO(29, 69, 100, 30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.solidHeart,
                          color: Color.fromRGBO(255, 87, 87, 30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  width: MediaQuery.of(context).size.width/1.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context) => Nutrition()));
                        },
                        child: Container(
                          height: 32,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text("Nutrition",style: GoogleFonts.poppins(
                                color: Color.fromRGBO(255, 87, 87,30),
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context) => Cardio_Strech_Screen()));
                        },
                        child: Container(
                          height: 32,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text("Cardio & Stretch",style: GoogleFonts.poppins(
                                color: Color.fromRGBO(255, 87, 87,30),
                                fontSize: 13,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context) => BMR_Calculator()));

                        },
                        child: Container(
                          height: 32,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text("Analytics",style: GoogleFonts.poppins(
                                color: Color.fromRGBO(255, 87, 87,30),
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 15),
              child: Row(
                children: [
                  Text("Week",style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 18
                  ),),
                  Text(" #01",style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                  ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) =>  Day_Detail()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width/1.1,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/scout.png"),
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                      Positioned(
                        left: 90,
                        top: 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Day #01",
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(255, 87, 87, 30),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            ),

                            Text(
                              "Squat Knee Hug",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 290,
                        top: 20,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Center(
                            child: Icon(
                              Icons.arrow_right,
                              size: 42,
                              color: Color.fromRGBO(255, 87, 87, 30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => const Day_Detail()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width/1.1,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/scout.png"),
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                      Positioned(
                        left: 90,
                        top: 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Day #02",
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(255, 87, 87, 30),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            ),

                            Text(
                              "Squat Knee Hug",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 290,
                        top: 20,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Center(
                            child: Icon(
                              Icons.arrow_right,
                              size: 42,
                              color: Color.fromRGBO(255, 87, 87, 30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => const Day_Detail()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width/1.1,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/scout.png"),
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                      Positioned(
                        left: 90,
                        top: 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Day #03",
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(255, 87, 87, 30),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            ),

                            Text(
                              "Squat Knee Hug",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 290,
                        top: 20,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Center(
                            child: Icon(
                              Icons.arrow_right,
                              size: 42,
                              color: Color.fromRGBO(255, 87, 87, 30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 20),
              child: Row(
                children: [
                  Text("Week",style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 18
                  ),),
                  Text(" #02",style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                  ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) =>  Day_Detail()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width/1.1,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/scout.png"),
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                      Positioned(
                        left: 90,
                        top: 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Day #01",
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(255, 87, 87, 30),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            ),

                            Text(
                              "Squat Knee Hug",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 290,
                        top: 20,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Center(
                            child: Icon(
                              Icons.arrow_right,
                              size: 42,
                              color: Color.fromRGBO(255, 87, 87, 30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => const Day_Detail()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width/1.1,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/scout.png"),
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                      Positioned(
                        left: 90,
                        top: 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Day #02",
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(255, 87, 87, 30),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            ),

                            Text(
                              "Squat Knee Hug",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 290,
                        top: 20,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Center(
                            child: Icon(
                              Icons.arrow_right,
                              size: 42,
                              color: Color.fromRGBO(255, 87, 87, 30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
                    "Program Introduction",
                  style: GoogleFonts.poppins(
                    color: Color.fromRGBO(255, 87, 87,30),
                    fontWeight: FontWeight.bold

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
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Bikni Glute Program",style: GoogleFonts.poppins(
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
                        child: Text("Glute Program",style: GoogleFonts.poppins(
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
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Glute Program Home",style: GoogleFonts.poppins(
                            color: Color.fromRGBO(255, 87, 87,30),
                            fontSize: 11,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                    SizedBox(
                      width: 10,
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
