import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../BMR/measurement.dart';
import '../home/profile/about_you.dart';


class Analytics extends StatefulWidget {
  const Analytics({Key? key}) : super(key: key);

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  List<bool> isSelectedList = [false, false, false,false,false];
  List<String> containerText = ['Sedentary', 'Lightly Active', 'Moderately Active','Very Active','Extra Active'];
  List<String> containerText1 = ['Little or no exercise', 'Exercise 1-2 days per week', 'Exercise 3-5 days per week','Exercise 6-7 days per week','Exercise 6-7 days per week and active job'];

  List<bool> isSelectedList1 = [false, false, false];
  List<String> containerText2 = ['Lose Weight','Gain Weight','Maintain'];


  List<String> menu = ['Male','Female'];
  String selected = '';
  var setvalue;
  String currentUnit = "kg";
  String currentHeight = "CM";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Color.fromRGBO(29, 69, 100, 30),
          centerTitle: true,
          title: Text(
            "Macro Calculator",
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 22,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18,right: 18,bottom: 15,top: 20),
                    child: TextFormField(
                      autofocus: false,
                      decoration: InputDecoration(
                        hintText: 'Age :',
                        errorStyle: GoogleFonts.roboto(
                          color: Colors.redAccent,
                          fontSize: 15.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.grey[400]!,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 18,right: 18,bottom: 15),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      autofocus: false,
                      validator: (value) {
                        double? weight = double.tryParse(value!);
                        if (weight == null) {
                          return "Please enter a valid weight";
                        }
                        if (currentUnit == "kg") {
                          // Convert weight to kilograms
                          weight *= 0.45359237;
                        }
                        // Perform any other validations
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Weight',
                        errorStyle: GoogleFonts.roboto(
                          color: Colors.redAccent,
                          fontSize: 15.0,
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("KG"),
                          ],
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.grey[400]!,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                      ),
                      onTap: () async {
                        List<dynamic> selectedHeight = await showDialog(
                          context: context,
                          builder: (context) => WidthPickerDialog(),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18,right: 18,bottom: 15),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Height',
                        errorStyle: GoogleFonts.roboto(
                          color: Colors.redAccent,
                          fontSize: 15.0,
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Ft."),
                          ],
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.grey[400]!,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                      ),
                      onTap: () async{
                        List<dynamic> selectedHeight = await showDialog(
                          context: context,
                          builder: (context) => HeightPickerDialog(),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 14, right: 14, top: 12),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width/1.1,
                            height: 60,
                            padding: EdgeInsets.only(left: 16, right: 16),
                            decoration: BoxDecoration(
                                border:
                                Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(5)),
                            child: DropdownButton(
                              hint: Padding(
                                padding:
                                const EdgeInsets.only(top: 10),
                                child: Text("Gender",style: GoogleFonts.poppins(

                                ),),
                              ),
                              isExpanded: true,
                              icon: Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 40,
                                ),
                              ),
                              underline: SizedBox(),
                              value: setvalue,
                              onChanged: (newValue) {
                                setState(() {
                                  setvalue = newValue;
                                });
                              },
                              items: menu.map((String value) {
                                return new DropdownMenuItem<String>(
                                  value: value,
                                  child: new Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                          Text(
                            selected,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: Text(
                      "Activity Level :",style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right:16,top: 10 ),
                    child: Column(
                      children: [
                        for (int i = 0; i < containerText.length; i++)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  for (int j = 0; j < isSelectedList.length; j++) {
                                    isSelectedList[j] = (i == j);
                                  }
                                });
                              },
                              child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width/1.1,
                                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                decoration: BoxDecoration(
                                  color: isSelectedList[i] ? Color.fromRGBO(29, 69, 100, 30) : Colors.white,
                                  border: Border.all(
                                    color: isSelectedList[i] ? Color.fromRGBO(29, 69, 100, 30) : Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          containerText[i],
                                          style: GoogleFonts.poppins(
                                              color: isSelectedList[i] ? Colors.white : Colors.black,
                                              fontWeight: FontWeight.bold,
                                            fontSize:14,
                                          ),
                                        ),
                                        Text(
                                          containerText1[i],
                                          style: GoogleFonts.poppins(
                                              color: isSelectedList[i] ? Colors.white : Colors.black,
                                            fontSize:11,
                                          ),
                                        ),
                                      ],
                                    ),
                                    isSelectedList[i]
                                        ? Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    )
                                        : SizedBox(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 260),
                    child: Text(
                      "Goal :",style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right:16,top: 10 ),
                    child: Column(
                      children: [
                        for (int i = 0; i < containerText2.length; i++)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  for (int j = 0; j < isSelectedList1.length; j++) {
                                    isSelectedList1[j] = (i == j);
                                  }
                                });
                              },
                              child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width/1.1,
                                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                decoration: BoxDecoration(
                                  color: isSelectedList1[i] ? Color.fromRGBO(29, 69, 100, 30) : Colors.white,
                                  border: Border.all(
                                    color: isSelectedList1[i] ? Color.fromRGBO(29, 69, 100, 30) : Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                        Text(
                                          containerText2[i],
                                          style: GoogleFonts.poppins(
                                            color: isSelectedList1[i] ? Colors.white : Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize:14,
                                          ),
                                        ),
                                    isSelectedList1[i]
                                        ? Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    )
                                        : SizedBox(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: InkWell(
                      onTap:(){
                      },
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width/1.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(255, 87, 87,30),

                        ),
                        child: Center(
                          child: Text(
                            "Calculate",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right:16,top: 20,bottom: 30 ),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width/1.1,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5,top: 10,bottom: 3),
                            child: Text("Result",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("00.00",style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
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