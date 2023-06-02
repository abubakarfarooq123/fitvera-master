import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Progress_Picture extends StatefulWidget {
  const Progress_Picture({Key? key}) : super(key: key);

  @override
  State<Progress_Picture> createState() => _Progress_PictureState();
}

class _Progress_PictureState extends State<Progress_Picture> {
  TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor:Color.fromRGBO(29, 69, 100, 30),
          centerTitle: true,
          title: Text(
            "Progress Picture",style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 22,),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.calendar_month,color: Colors.white,size: 26,),
              onPressed: () async{
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                  builder: (BuildContext context, Widget? child) {
                    return Theme(
                      data: ThemeData.light().copyWith(
                        primaryColor: Color.fromRGBO(255, 87, 87,30),
                        //Change the color here
                        accentColor: Color.fromRGBO(255, 87, 87,30),
                        //Change the accent color here
                        colorScheme:
                        ColorScheme.light(primary:Color.fromRGBO(255, 87, 87,30)),
                        buttonTheme: ButtonThemeData(
                            textTheme: ButtonTextTheme.primary),
                      ),
                      child: child ?? SizedBox(),
                    );
                  },
                );

                // Show time picker dialog if date is selected
                if (pickedDate != null) {
                  TimeOfDay? pickedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );

                  // Update date and time value
                  if (pickedTime != null) {
                    DateTime pickedDateTime = DateTime(
                      pickedDate.year,
                      pickedDate.month,
                      pickedDate.day,
                      pickedTime.hour,
                      pickedTime.minute,
                    );
                    setState(() {
                      _date.text = DateFormat('yyyy-MM-dd HH:mm')
                          .format(pickedDateTime);
                    });
                  }
                }
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                        child: Text("Today",style: GoogleFonts.poppins(
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
                        child: Text("This Week",style: GoogleFonts.poppins(
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
                        child: Text("This Month",style: GoogleFonts.poppins(
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
                          "This Year",
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
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 15,top: 20),
                child: Text("Front:",style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
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
                Container(
                  height: 220,
                  width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.3),
                ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Image.asset("assets/images/pic.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 50,top: 20),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: (){},
                                icon: Icon(
                                  FontAwesomeIcons.share,
                                  size: 28,
                                  color: Color.fromRGBO(29, 69, 100, 30),
                                ),
                            ),
                            IconButton(
                              onPressed: (){
                                showDialog(context: context,
                                    builder: (context){
                                      return showAlert();

                                    });
                              },
                              icon: Icon(
                                Icons.add_circle,
                                size: 28,
                                color: Color.fromRGBO(29, 69, 100, 30),

                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 220,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Image.asset("assets/images/pic.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 50,top: 20),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(
                                FontAwesomeIcons.share,
                                size: 28,
                                color: Color.fromRGBO(29, 69, 100, 30),
                              ),
                            ),
                            IconButton(
                              onPressed: (){
                                showDialog(context: context,
                                    builder: (context){
                                      return showAlert();

                                    });
                              },
                              icon: Icon(
                                Icons.add_circle,
                                size: 28,
                                color: Color.fromRGBO(29, 69, 100, 30),

                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height:10
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(255, 87, 87,30),
                  ),
                  child:Center(
                    child: Text("Before",style: GoogleFonts.poppins(
                      color: Colors.white
                    ),),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(29, 69, 100, 30),
                  ),
                  child:Center(
                    child: Text("After",style: GoogleFonts.poppins(
                        color: Colors.white
                    ),),
                  ),
                ),
              ],
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 15,top: 20),
                child: Text("Back:",style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
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
                Container(
                  height: 220,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Image.asset("assets/images/pic.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 50,top: 20),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(
                                FontAwesomeIcons.share,
                                size: 28,
                                color: Color.fromRGBO(29, 69, 100, 30),
                              ),
                            ),
                            IconButton(
                              onPressed: (){
                                showDialog(context: context,
                                    builder: (context){
                                      return showAlert();

                                    });
                              },
                              icon: Icon(
                                Icons.add_circle,
                                size: 28,
                                color: Color.fromRGBO(29, 69, 100, 30),

                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 220,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Image.asset("assets/images/pic.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 50,top: 20),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(
                                FontAwesomeIcons.share,
                                size: 28,
                                color: Color.fromRGBO(29, 69, 100, 30),
                              ),
                            ),
                            IconButton(
                              onPressed: (){
                                showDialog(context: context,
                                    builder: (context){
                                      return showAlert();

                                    });
                              },
                              icon: Icon(
                                Icons.add_circle,
                                size: 28,
                                color: Color.fromRGBO(29, 69, 100, 30),

                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
                height:10
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(255, 87, 87,30),
                  ),
                  child:Center(
                    child: Text("Before",style: GoogleFonts.poppins(
                        color: Colors.white
                    ),),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(29, 69, 100, 30),
                  ),
                  child:Center(
                    child: Text("After",style: GoogleFonts.poppins(
                        color: Colors.white
                    ),),
                  ),
                ),
              ],
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 15,top: 20),
                child: Text("Left Side:",style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
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
                Container(
                  height: 220,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Image.asset("assets/images/pic.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 50,top: 20),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(
                                FontAwesomeIcons.share,
                                size: 28,
                                color: Color.fromRGBO(29, 69, 100, 30),
                              ),
                            ),
                            IconButton(
                              onPressed: (){
                                showDialog(context: context,
                                    builder: (context){
                                      return showAlert();

                                    });
                              },
                              icon: Icon(
                                Icons.add_circle,
                                size: 28,
                                color: Color.fromRGBO(29, 69, 100, 30),

                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 220,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Image.asset("assets/images/pic.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 50,top: 20),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(
                                FontAwesomeIcons.share,
                                size: 28,
                                color: Color.fromRGBO(29, 69, 100, 30),
                              ),
                            ),
                            IconButton(
                              onPressed: (){
                                showDialog(context: context,
                                    builder: (context){
                                      return showAlert();

                                    });
                              },
                              icon: Icon(
                                Icons.add_circle,
                                size: 28,
                                color: Color.fromRGBO(29, 69, 100, 30),

                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
                height:10
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(255, 87, 87,30),
                  ),
                  child:Center(
                    child: Text("Before",style: GoogleFonts.poppins(
                        color: Colors.white
                    ),),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(29, 69, 100, 30),
                  ),
                  child:Center(
                    child: Text("After",style: GoogleFonts.poppins(
                        color: Colors.white
                    ),),
                  ),
                ),
              ],
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 15,top: 20),
                child: Text("Right Side:",style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
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
                Container(
                  height: 220,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Image.asset("assets/images/pic.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 50,top: 20),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(
                                FontAwesomeIcons.share,
                                size: 28,
                                color: Color.fromRGBO(29, 69, 100, 30),
                              ),
                            ),
                            IconButton(
                              onPressed: (){
                                showDialog(context: context,
                                    builder: (context){
                                      return showAlert();

                                    });
                              },
                              icon: Icon(
                                Icons.add_circle,
                                size: 28,
                                color: Color.fromRGBO(29, 69, 100, 30),

                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 220,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Image.asset("assets/images/pic.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 50,top: 20),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(
                                FontAwesomeIcons.share,
                                size: 28,
                                color: Color.fromRGBO(29, 69, 100, 30),
                              ),
                            ),
                            IconButton(
                              onPressed: (){
                                showDialog(context: context,
                                    builder: (context){
                                      return showAlert();

                                    });
                              },
                              icon: Icon(
                                Icons.add_circle,
                                size: 28,
                                color: Color.fromRGBO(29, 69, 100, 30),

                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
                height:10
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(255, 87, 87,30),
                  ),
                  child:Center(
                    child: Text("Before",style: GoogleFonts.poppins(
                        color: Colors.white
                    ),),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(29, 69, 100, 30),
                  ),
                  child:Center(
                    child: Text("After",style: GoogleFonts.poppins(
                        color: Colors.white
                    ),
                    ),
                  ),
                ),
              ],
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
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text("Upload Picture",style: GoogleFonts.poppins(
                color: Color.fromRGBO(255, 87, 87,30),
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
              "You have not added any photos yet \n     take or add photo to create your \n           “Before and After” picture.",
          style: GoogleFonts.poppins(
            color: Colors.grey,
            fontSize: 13,
          ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: TextButton(
                onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return showPhotoAlert();

                      });
                },
                child: Text(
                  "How to take photos?",
                  style: GoogleFonts.poppins(
                    color: Color.fromRGBO(29, 69, 100, 30),
                    fontWeight: FontWeight.w800,
                    fontSize: 18
                  ),
                ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: InkWell(
              onTap: (){
                showDialog(context: context,
                    builder: (context){
                      return showNewAlert();

                    });
              },
              child: Container(
                height: 40,
                width: 230,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 87, 87,30),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Upload Picture",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              height: 40,
              width: 230,
              decoration: BoxDecoration(
                color: Color.fromRGBO(29, 69, 100, 30),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text(
                      "Cancel",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget showNewAlert() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text("Select Photo",style: GoogleFonts.poppins(
                  color: Color.fromRGBO(255, 87, 87,30),
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: InkWell(
              onTap: (){
                // showDialog(context: context,
                //     builder: (context){
                //       return showNewAlert();
                //
                //     });
              },
              child: Container(
                height: 40,
                width: 230,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 87, 87,30),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Gallery",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              height: 40,
              width: 230,
              decoration: BoxDecoration(
                color: Color.fromRGBO(29, 69, 100, 30),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Camera",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget showPhotoAlert() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text("How to take a Photo",style: GoogleFonts.poppins(
                  color: Color.fromRGBO(255, 87, 87,30),
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20 ),
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
                      child: Text("Photos",style: GoogleFonts.poppins(
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
                      child: Text("Goals",style: GoogleFonts.poppins(
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
                      child: Text("Limitations",style: GoogleFonts.poppins(
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
                        "Weight",
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
            padding: const EdgeInsets.only(top:10),
            child: Container(
                width: MediaQuery.of(context).size.width/1.1,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Image.asset("assets/images/cal.png"),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 80,
                      top: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nisi consectetur ut praesentium \ndolorem provident.",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12
                          ),),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top:10),
            child: Container(
              width: MediaQuery.of(context).size.width/1.1,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Image.asset("assets/images/sun.png"),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 80,
                    top: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nisi consectetur ut praesentium \ndolorem provident.",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 12
                        ),),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10),
            child: Container(
              width: MediaQuery.of(context).size.width/1.1,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Image.asset("assets/images/tim.png"),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 80,
                    top: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nisi consectetur ut praesentium \ndolorem provident.",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 12
                        ),),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10),
            child: Container(
              width: MediaQuery.of(context).size.width/1.1,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Image.asset("assets/images/per.png"),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 80,
                    top: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nisi consectetur ut praesentium \ndolorem provident.",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 12
                        ),),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10),
            child: Container(
              width: MediaQuery.of(context).size.width/1.1,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Image.asset("assets/images/cam.png"),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 80,
                    top: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nisi consectetur ut praesentium \ndolorem provident.",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 12
                        ),),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10),
            child: Container(
              width: MediaQuery.of(context).size.width/1.1,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    child: Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Image.asset("assets/images/hang.png"),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 80,
                    top: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nisi consectetur ut praesentium \ndolorem provident.",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 12
                        ),),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }

}
