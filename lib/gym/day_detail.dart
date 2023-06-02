import 'package:fitvera/gym/gym_warm_up.dart';
import 'package:fitvera/home/hot_program/payment_gateway.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:fitvera/home/profile/fvrt/workout.dart';

import '../home/profile/fvrt/warm_up/warm_upScreen.dart';

class Day_Detail extends StatefulWidget {
  const Day_Detail({Key? key}) : super(key: key);

  @override
  State<Day_Detail> createState() => _Day_DetailState();
}

class _Day_DetailState extends State<Day_Detail> {
  TextEditingController _date = TextEditingController();
  DateTime _selectedDate = DateTime.now();


  TextEditingController _timeController = TextEditingController();
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
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/back.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5,top: 30),
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
                            padding: const EdgeInsets.only(left: 170),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(
                                    context, MaterialPageRoute(
                                    builder: (context) => Gym_Warm_up()));
                              },
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
                                        "Warm Up Guide",
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
                      height: 130,
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
                          color: Color.fromRGBO(255, 87, 87, 30),
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
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Week 01",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black,
                    size: 17,),
                  Text(
                    "Day 01",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Full Body Glute Power",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        "With Jonathan",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        // onTap: () async {
                        //   DateTime? pickedDate = await showDatePicker(
                        //     context: context,
                        //     initialDate: DateTime.now(),
                        //     firstDate: DateTime(1900),
                        //     lastDate: DateTime.now(),
                        //     builder: (BuildContext context, Widget? child) {
                        //       return Theme(
                        //         data: ThemeData.light().copyWith(
                        //           primaryColor: Color.fromRGBO(255, 87, 87,30),
                        //           //Change the color here
                        //           accentColor: Color.fromRGBO(255, 87, 87,30),
                        //           //Change the accent color here
                        //           colorScheme:
                        //           ColorScheme.light(primary:Color.fromRGBO(255, 87, 87,30)),
                        //           buttonTheme: ButtonThemeData(
                        //               textTheme: ButtonTextTheme.primary),
                        //         ),
                        //         child: child ?? SizedBox(),
                        //       );
                        //     },
                        //   );
                        //
                        //   // Show time picker dialog if date is selected
                        //   if (pickedDate != null) {
                        //     TimeOfDay? pickedTime = await showTimePicker(
                        //       context: context,
                        //       initialTime: TimeOfDay.now(),
                        //     );
                        //
                        //     // Update date and time value
                        //     if (pickedTime != null) {
                        //       DateTime pickedDateTime = DateTime(
                        //         pickedDate.year,
                        //         pickedDate.month,
                        //         pickedDate.day,
                        //         pickedTime.hour,
                        //         pickedTime.minute,
                        //       );
                        //       setState(() {
                        //         _date.text = DateFormat('yyyy-MM-dd HH:mm')
                        //             .format(pickedDateTime);
                        //       });
                        //     }
                        //   }
                        // },
                        onTap:(){
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
                ],
              ),
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "Description :",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 5, right: 10),
              child: Text(
                "Debitis dolores earum qui aliquid neque iure at. Deserunt nobis ea reprehenderit. Nobis tempore illum neque tenetur similique consectetur accusantium molestiae sed. Et voluptatem voluptate nobis doloremque consequuntur blanditiis aut quam et. Sed dolor et autem voluptatibus minima et eligendi ducimus..",
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(color: Colors.black, fontSize: 11),
              ),
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  "Equipment Needed :",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/ball.png"),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7, top: 7),
                      child: Text(
                        "Med Ball",
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/barr.png"),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 7),
                      child: Text(
                        "Barbell",
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/weight.png"),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 7),
                      child: Text(
                        "Plate",
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 25),
                child: Text(
                  "Active Movement Prep :",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => const Fvrt_prep()));
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
                              "Squat Knee Hug",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 25,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "2 Rounds",
                                      style: GoogleFonts.poppins(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(255, 87, 87, 30),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 25,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "10 Reps",
                                      style: GoogleFonts.poppins(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(255, 87, 87, 30),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
              padding: const EdgeInsets.only( top: 16),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => Fvrt_prep()));
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
                                image: AssetImage("assets/images/leg.png"),
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
                              "Med Ball Slam",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 25,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "2 Rounds",
                                      style: GoogleFonts.poppins(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(255, 87, 87, 30),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 25,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "10 Reps",
                                      style: GoogleFonts.poppins(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(255, 87, 87, 30),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
              padding: const EdgeInsets.only( top: 16),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => Fvrt_prep()));
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
                                image: AssetImage("assets/images/full.png"),
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
                              "Sprint to Stick",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 25,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "2 Rounds",
                                      style: GoogleFonts.poppins(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(255, 87, 87, 30),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 25,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "10 Reps",
                                      style: GoogleFonts.poppins(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(255, 87, 87, 30),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
              padding: const EdgeInsets.only(
                  left: 20, right: 18, top: 80, bottom: 10),
              child: InkWell(
                onTap:(){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Warm_up()));
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
  Widget showAlert() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/ticck.png"),
                  )
              ),
            ),
          ),
          SizedBox(
              height:15
          ),
          Center(
            child: Text("Done",style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            ),
          ),
          SizedBox(
              height:10
          ),
          Text(
            "Your photo reminder is added in your schedule",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.grey,
              fontSize: 11,
            ),
          ),
        ],
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
                  "Ok",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                  ),),
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
