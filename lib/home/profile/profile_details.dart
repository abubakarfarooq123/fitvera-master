import 'package:fitvera/home/all_program.dart';
import 'package:fitvera/home/profile/edit_profile.dart';
import 'package:fitvera/home/profile/fvrt/activity/activity_screen.dart';
import 'package:fitvera/home/profile/get_help.dart';
import 'package:fitvera/home/profile/notifications.dart';
import 'package:fitvera/home/profile/privacy_policy.dart';
import 'package:fitvera/home/profile/settings/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'fvrt/favorite_workout.dart';

class Profile_detail extends StatefulWidget {
  const Profile_detail({Key? key}) : super(key: key);

  @override
  State<Profile_detail> createState() => _Profile_detailState();
}

class _Profile_detailState extends State<Profile_detail> {
  @override
  var name = '';
  String img = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(29, 69, 100, 30),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 20),
              child: Container(
                alignment: AlignmentDirectional.centerStart,
                child: IconButton(onPressed: (){
                  Navigator.of(context).pop();
                },
                    icon: Icon(
                      FontAwesomeIcons.multiply,
                      color: Colors.white,
                      size: 25,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/images/profile1.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Billy James",
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 220,
                          height: 10,
                          child: LinearProgressIndicator(
                            value: 0.4,
                            backgroundColor: Colors.grey.withOpacity(0.2),
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Color.fromRGBO(255, 87, 87, 30)),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '${(0.4 * 100).toInt()}% Profile Completed',
                          style: TextStyle(fontSize: 12.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 13, right: 13, top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: InkWell(
                        onTap: () async {
                          List<dynamic> selectedHeight = await showDialog(
                            context: context,
                            builder: (context) => AgeDialog(),
                          );
                        },
                        child: Column(
                          children: [
                            Text(
                              "Age",
                              style:
                              GoogleFonts.poppins(color: Colors.white, fontSize: 11),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "22",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 27),
                      child: Text("|",style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w900
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: InkWell(
                        onTap: () async {
                          List<dynamic> selectedHeight = await showDialog(
                            context: context,
                            builder: (context) => HeightPickerDialog(),
                          );
                        },
                        child: Column(
                          children: [
                            Text(
                              "Height (IN)",
                              style:
                              GoogleFonts.poppins(color: Colors.white, fontSize: 11),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "168",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 27),
                      child: Text("|",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w900
                      ),),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: InkWell(
                        onTap: () async {
                          List<dynamic> selectedHeight = await showDialog(
                            context: context,
                            builder: (context) => WidthPickerDialog(),
                          );
                        },
                        child: Column(
                          children: [
                            Text(
                              "Weight (KG)",
                              style:
                              GoogleFonts.poppins(color: Colors.white, fontSize: 11),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "68",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Container(
              height: 800.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Edit_Profile()));
                        },
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width/1.1,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.2)),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 15,
                                top: 18,
                                child: Icon(
                                  FontAwesomeIcons.solidUser,
                                  size: 25,
                                  color: Color.fromRGBO(29, 69, 100, 30),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Positioned(
                                left: 56,
                                top: 18,
                                child: Text(
                                  "Account",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 290,
                                top: 10,
                                child: Icon(
                                  Icons.arrow_right,
                                  size: 40,
                                  color: Color.fromRGBO(29, 69, 100, 30),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Noti()));
                        },
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width/1.1,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.2)),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 15,
                                top: 18,
                                child: Icon(
                                  FontAwesomeIcons.solidBell,
                                  size: 25,
                                  color: Color.fromRGBO(29, 69, 100, 30),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Positioned(
                                left: 56,
                                top: 18,
                                child: Text(
                                  "Notifications",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 290,
                                top: 10,
                                child: Icon(
                                  Icons.arrow_right,
                                  size: 40,
                                  color: Color.fromRGBO(29, 69, 100, 30),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fvrt_workout()));
                        },
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width/1.1,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.2)),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 15,
                                top: 18,
                                child: Icon(
                                  FontAwesomeIcons.solidHeart,
                                  size: 25,
                                  color: Color.fromRGBO(29, 69, 100, 30),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Positioned(
                                left: 56,
                                top: 18,
                                child: Text(
                                  "Favorite",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 290,
                                top: 10,
                                child: Icon(
                                  Icons.arrow_right,
                                  size: 40,
                                  color: Color.fromRGBO(29, 69, 100, 30),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Activity_Screen()));
                        },
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width/1.1,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.2)),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 15,
                                top: 18,
                                child: Icon(
                                  FontAwesomeIcons.solidBarChart,
                                  size: 25,
                                  color: Color.fromRGBO(29, 69, 100, 30),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Positioned(
                                left: 56,
                                top: 18,
                                child: Text(
                                  "Activity",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 290,
                                top: 10,
                                child: Icon(
                                  Icons.arrow_right,
                                  size: 40,
                                  color: Color.fromRGBO(29, 69, 100, 30),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => All_Programs()));
                        },
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width/1.1,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.2)),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 15,
                                top: 18,
                                child: Icon(
                                  FontAwesomeIcons.fantasyFlightGames,
                                  size: 25,
                                  color: Color.fromRGBO(29, 69, 100, 30),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Positioned(
                                left: 56,
                                top: 18,
                                child: Text(
                                  "Programs",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 290,
                                top: 10,
                                child: Icon(
                                  Icons.arrow_right,
                                  size: 40,
                                  color: Color.fromRGBO(29, 69, 100, 30),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Get_Help()));
                        },
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width/1.1,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.2)),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 15,
                                top: 18,
                                child: Icon(
                                  FontAwesomeIcons.questionCircle,
                                  size: 25,
                                  color: Color.fromRGBO(29, 69, 100, 30),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Positioned(
                                left: 56,
                                top: 18,
                                child: Text(
                                  "Get Help",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 290,
                                top: 10,
                                child: Icon(
                                  Icons.arrow_right,
                                  size: 40,
                                  color: Color.fromRGBO(29, 69, 100, 30),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Privacy_Policy()));
                        },
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width/1.1,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.2)),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 15,
                                top: 18,
                                child: Icon(
                                  Icons.privacy_tip_rounded,
                                  size: 25,
                                  color: Color.fromRGBO(29, 69, 100, 30),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Positioned(
                                left: 56,
                                top: 18,
                                child: Text(
                                  "Privacy Policy",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 290,
                                top: 10,
                                child: Icon(
                                  Icons.arrow_right,
                                  size: 40,
                                  color: Color.fromRGBO(29, 69, 100, 30),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Verification()));
                        },
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width/1.1,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.2)),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 15,
                                top: 18,
                                child: Icon(
                                  Icons.watch,
                                  size: 25,
                                  color: Color.fromRGBO(29, 69, 100, 30),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Positioned(
                                left: 56,
                                top: 18,
                                child: Text(
                                  "Connect to Apple",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 290,
                                top: 10,
                                child: Icon(
                                  Icons.arrow_right,
                                  size: 40,
                                  color: Color.fromRGBO(29, 69, 100, 30),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Settings()));
                        },
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width/1.1,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.2)),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 15,
                                top: 18,
                                child: Icon(
                                  Icons.settings,
                                  size: 25,
                                  color: Color.fromRGBO(29, 69, 100, 30),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Positioned(
                                left: 56,
                                top: 18,
                                child: Text(
                                  "Settings",
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 290,
                                top: 10,
                                child: Icon(
                                  Icons.arrow_right,
                                  size: 40,
                                  color: Color.fromRGBO(29, 69, 100, 30),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 18, top: 30, bottom: 15),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width/1.1,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 87, 87, 30),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "Logout",
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
            ),
          ],
        ),
      ),
    );
  }
}

class HeightPickerDialog extends StatefulWidget {
  @override
  _HeightPickerDialogState createState() => _HeightPickerDialogState();
}

class _HeightPickerDialogState extends State<HeightPickerDialog> {
  int selectedFeet = 0;
  int selectedInches = 0;
  int selectedCentimeters = 0;
  bool useFeetAndInches = true;

  void _toggleSwitch(int? index) {
    setState(() {
      useFeetAndInches = index == 0;
    });
  }
  TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _updateTextField();
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Container(
        child: Text(
          'Select height',
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 190,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.withOpacity(0.3)
                ),
                child: Center(
                  child: ToggleSwitch(
                    minWidth: 90.0,
                    minHeight: 40.0,
                    cornerRadius: 20.0,
                    activeBgColors: [[Color.fromRGBO(255, 87, 87,30)], [Color.fromRGBO(255, 87, 87,30)]],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey.withOpacity(0.3),
                    inactiveFgColor: Colors.grey.withOpacity(0.8),
                    labels: ['Ft & Inch', 'CM'],
                    initialLabelIndex: useFeetAndInches ? 0 : 1,
                    onToggle: _toggleSwitch,
                  ),
                ),
              )            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (useFeetAndInches) _buildFeetWheel(),
              if (useFeetAndInches) SizedBox(width: 8),
              if (useFeetAndInches) _buildInchesWheel(),
              if (!useFeetAndInches) _buildCentimetersWheel(),
              if (useFeetAndInches) Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Text("Ft.",style: GoogleFonts.poppins(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
                ),
              ),
              if (!useFeetAndInches) Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Text("CM.",style: GoogleFonts.poppins(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text("Cancel",style:GoogleFonts.poppins(
                    color: Colors.black54,
                  ),),
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            InkWell(
              child: Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 87, 87, 30),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text("Confirm",style:GoogleFonts.poppins(
                    color: Colors.white,
                  ),),
                ),
              ),
              onTap: () {
                Navigator.of(context).pop(useFeetAndInches
                    ? [selectedFeet, selectedInches]
                    : [selectedCentimeters]);
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildFeetWheel() {
    return Container(
      height: 150,
      width: 80,
      child: ListWheelScrollView(
        itemExtent: 50,
        children: List.generate(9, (index) {
          return Padding(
            padding: const EdgeInsets.only(left:40),
            child: Column(
              children: [
                Center(
                  child: Text(
                    index.toString(),
                    style: TextStyle(fontSize: 24,color: Color.fromRGBO(29, 69, 100, 30),fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 30,
                  height: 3,
                  color: Colors.red, // Set the line color
                ),
              ],
            ),
          );
        }),
        onSelectedItemChanged: (index) {
          setState(() {
            selectedFeet = index;
            _updateTextField();
          });
        },
      ),
    );
  }

  Widget _buildInchesWheel() {
    return Container(
      height: 150,
      width: 80,
      child: ListWheelScrollView(
        itemExtent: 50,
        children: List.generate(12, (index) {
          return Column(
            children: [
              Center(
                child: Text(
                  index.toString(),
                  style: TextStyle(fontSize: 24,color: Color.fromRGBO(29, 69, 100, 30),fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 30,
                height: 3,
                color: Colors.red, // Set the line color
              ),
            ],
          );
        }),
        onSelectedItemChanged: (index) {
          setState(() {
            selectedInches = index;
            _updateTextField();
          });
        },
      ),
    );
  }

  Widget _buildCentimetersWheel() {
    return Container(
      height: 150,
      width: 100,
      child: ListWheelScrollView(
        itemExtent: 50,
        children: List.generate(300, (index) {
          return Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Column(
              children: [
                Center(
                  child: Text(
                    index.toString(),
                    style: TextStyle(fontSize: 24,color: Color.fromRGBO(29, 69, 100, 30),fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 30,
                  height: 3,
                  color: Colors.red, // Set the line color
                ),
              ],
            ),
          );
        }),
        onSelectedItemChanged: (index) {
          setState(() {
            selectedCentimeters = index;
            _updateTextField();
          });
        },
      ),
    );
  }

  void _updateTextField() {
    if (useFeetAndInches) {
      String heightText = '$selectedFeet feet, $selectedInches inches';
      _textEditingController.text = heightText;
    } else {
      String heightText = '$selectedCentimeters cm';
      _textEditingController.text = heightText;
    }
  }
}


class AgeDialog extends StatefulWidget {
  @override
  _AgeDialogState createState() => _AgeDialogState();
}

class _AgeDialogState extends State<AgeDialog> {


  int selectedKG = 0;
  int selectedPound = 0;
  int selectedCentimeters = 0;
  bool useFeetAndInches = true;
  void _toggleSwitch(int? index) {
    setState(() {
      useFeetAndInches = index == 0;
    });
  }

  TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _updateTextField();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Container(
        child: Center(
          child: Text(
            'Select Age',
            style: GoogleFonts.poppins(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (useFeetAndInches) Padding(
                padding: const EdgeInsets.only(left: 32),
                child: _buildKGWheel(),
              ),
              if (useFeetAndInches) SizedBox(width: 8),
              if (useFeetAndInches) Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Text("",style: GoogleFonts.poppins(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
                ),
              ),
              if (!useFeetAndInches) Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Text("",style: GoogleFonts.poppins(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text("Cancel",style:GoogleFonts.poppins(
                    color: Colors.black54,
                  ),),
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            InkWell(
              child: Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 87, 87, 30),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text("Confirm",style:GoogleFonts.poppins(
                    color: Colors.white,
                  ),),
                ),
              ),
              onTap: () {
                Navigator.of(context).pop(useFeetAndInches
                    ? [selectedKG]
                    : [selectedPound]);
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildKGWheel() {
    return Container(
      height: 150,
      width: 80,
      child: ListWheelScrollView(
        itemExtent: 50,
        children: List.generate(70, (index) {
          return Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              children: [
                Center(
                  child: Text(
                    index.toString(),
                    style: TextStyle(fontSize: 24,color: Color.fromRGBO(29, 69, 100, 30),fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 40,
                  height: 3,
                  color: Colors.red, // Set the line color
                ),
              ],
            ),
          );
        }),
        onSelectedItemChanged: (index) {
          setState(() {
            selectedKG = index;
            _updateTextField();
          });
        },
      ),
    );
  }


  void _updateTextField() {
    if (useFeetAndInches) {
      String heightText = '$selectedKG Kg';
      _textEditingController.text = heightText;
    } else {
      String heightText = '$selectedPound lbs';
      _textEditingController.text = heightText;
    }
  }
}