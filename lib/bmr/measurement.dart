import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';



class Measurement extends StatefulWidget {
  const Measurement({Key? key}) : super(key: key);

  @override
  State<Measurement> createState() => _MeasurementState();
}

class _MeasurementState extends State<Measurement>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor:Color.fromRGBO(29, 69, 100, 30),
          centerTitle: true,
          title: Text(
            "Circumference \nMeasurements",style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold
          ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 22,),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.info,
                color: Colors.white,
                size: 26,),
              onPressed: () {
                showDialog(context: context,
                    builder: (context){
                      return showPhotoAlert();

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
                        child: Text(
                          "Waist",
                          style: GoogleFonts.poppins(
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
                          "Hip",
                          style: GoogleFonts.poppins(
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
                          "Chest",
                          style: GoogleFonts.poppins(
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
                          "Thigh",
                          style: GoogleFonts.poppins(
                              color: Color.fromRGBO(255, 87, 87,30),
                              fontSize: 11,
                              fontWeight: FontWeight.bold
                          ),
                        ),
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
                          "Both Arm",
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
              height: 20,
            ),
            Center(child: Image.asset("assets/images/shade.png"),),
            Padding(
              padding: const EdgeInsets.only(top: 25,),
              child: Container(
                  height: 65,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey,width: 2),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 2),
                        child: Text(
                          "Week 1:",
                          style: GoogleFonts.poppins(
                            color: Colors.grey.withOpacity(0.6),
                            fontSize: 14,
                          ),),
                      ),
                      SizedBox(
                        height:5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("77 CM",style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),
                      ),
                    ],
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25,),
              child: InkWell(
                onTap: () async {
                  List<dynamic> selectedHeight = await showDialog(
                    context: context,
                    builder: (context) => HeightPickerDialog(),
                  );
                },
                child: Container(
                    height: 65,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey,width: 2),
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 2),
                          child: Text(
                            "Week 2",
                            style: GoogleFonts.poppins(
                              color: Colors.grey.withOpacity(0.6),
                              fontSize: 14,
                            ),),
                        ),
                        SizedBox(
                          height:5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        ),
                      ],
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25,),
              child: InkWell(
                onTap: () async {
                  List<dynamic> selectedHeight = await showDialog(
                    context: context,
                    builder: (context) => HeightPickerDialog(),
                  );
                },
                child: Container(
                    height: 65,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey,width: 2),
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 2),
                          child: Text(
                            "Week 3",
                            style: GoogleFonts.poppins(
                              color: Colors.grey.withOpacity(0.6),
                              fontSize: 14,
                            ),),
                        ),
                        SizedBox(
                          height:5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        ),
                      ],
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25,),
              child: InkWell(
                onTap: () async {
                  List<dynamic> selectedHeight = await showDialog(
                    context: context,
                    builder: (context) => HeightPickerDialog(),
                  );
                },
                child: Container(
                    height: 65,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey,width: 2),
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 2),
                          child: Text(
                            "Week 4",
                            style: GoogleFonts.poppins(
                              color: Colors.grey.withOpacity(0.6),
                              fontSize: 14,
                            ),),
                        ),
                        SizedBox(
                          height:5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("",style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                        ),
                      ],
                    )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 20, bottom: 10),
              child: InkWell(
                onTap: (){
                },
                child: Container(
                  height: 50,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 87, 87, 30),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Save",
                      style:
                      GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold

                      ),
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
  Widget showPhotoAlert() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text("How to measure",style: GoogleFonts.poppins(
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
                        child: Text(
                          "Measure",
                          style: GoogleFonts.poppins(
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
                          "Goals",
                          style: GoogleFonts.poppins(
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
                width: 320,
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
                          child: Image.asset("assets/images/ii.png"),
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
                            "Weight:",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 11
                          ),),
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
                width: 320,
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
                          child: Image.asset("assets/images/chest.png"),
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
                            "Chest:",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 11
                          ),),
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
                width: 320,
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
                          child: Image.asset("assets/images/shol.png"),
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
                            "Shoulder:",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 11
                          ),),
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
                width: 320,
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
                          child: Image.asset("assets/images/bis.png"),
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
                            "Biceps:",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 11
                          ),),
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
                width: 320,
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
                          child: Image.asset("assets/images/abs.png"),
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
                            "ABS:",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 11
                          ),),
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
                width: 320,
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
                          child: Image.asset("assets/images/glu.png"),
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
                            "Glutes:",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 11
                          ),),
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
                width: 320,
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
                          child: Image.asset("assets/images/waist.png"),
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
                            "Waist:",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 11
                          ),),
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
                width: 320,
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
                          child: Image.asset("assets/images/thighs.png"),
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
                            "Thighs:",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 11
                          ),),
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
            SizedBox(
              height:20
            ),
            Center(
              child: Container(
                height: 40,
                width: 230,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 87, 87,30),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Okay",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
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
                    style: TextStyle(fontSize: 24),
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
                  style: TextStyle(fontSize: 24),
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
                    style: TextStyle(fontSize: 24),
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