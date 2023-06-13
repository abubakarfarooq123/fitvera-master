import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../home_navbar.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';

import 'edit_profile.dart';

class About_you extends StatefulWidget {
  const About_you({Key? key}) : super(key: key);

  @override
  State<About_you> createState() => _About_youState();
}

class _About_youState extends State<About_you> {
  DateTime _selectedDate = DateTime.now();

  int selectedFeet = 0;
  int selectedInches = 0;

  int selectedCentimeters = 0;
  bool useFeetAndInches = false;
  bool switchNumbers = false;
  List<String> gender = ['Male', 'Female'];
  String selected = '';
  String selectedHeight = '';
  String selectedWeight = '';

  String? selectedGender;

  TextEditingController _dateController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _dateController.text = _selectedDate.toString();
    FirebaseFirestore.instance
        .collection('registration')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        final selectedHeight = documentSnapshot.get('height');
        final selectedWeight = documentSnapshot.get('weight');
        _textEditingController.text = selectedHeight;
        _textEditingController1.text = selectedWeight;
      }
    });
    FirebaseFirestore.instance
        .collection('registration')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        var selectedGender = documentSnapshot.get('gender');
        setState(() {
          selectedGender = selectedGender;
        });
      }
    });
    FirebaseFirestore.instance
        .collection('registration')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        final selectedBirthdayDate = documentSnapshot.get('dob');
        setState(() {
          _dateController.text = selectedBirthdayDate;
        });
      }
    });


  }


  void _updateSelectedValues() {
    String height = _textEditingController.text;
    String weight = _textEditingController1.text;
    String birthdayDate = _dateController.text;


    // Update selected height and weight in Firebase
    FirebaseFirestore.instance
        .collection('registration')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .update({
      'height': height,
      'weight': weight,
      'gender': selectedGender,
      'dob': birthdayDate,

    })
        .then((_) {
      print('Selected values updated successfully');
    })
        .catchError((error) {
      print('Error updating selected values: $error');
    });
  }


  int selectedNumber1 = 0;
  int selectedNumber2 = 0;
  TextEditingController _textEditingController = TextEditingController();

  TextEditingController _textEditingController1 = TextEditingController();

  // String? setGender;

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  // Future updateUser(
  //     weight,
  //     height,
  //     date,
  //     gender,
  //     ) async {
  //   await FirebaseFirestore.instance
  //       .collection("registration")
  //       .doc(FirebaseAuth.instance.currentUser?.uid)
  //       .update({
  //     'name': weight,
  //     'email': height,
  //     'phone': date,
  //     'phone': gender,
  //   });
  // }

  Future<void> _showDatePicker(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          children: [
            Container(
              height: 310,
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 40),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => homeNavBar()));
                },
                child: Icon(
                  Icons.cancel,
                  color: Colors.black54,
                  size: 35,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 20),
              child: Text(
                "About You",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: InkWell(
                onTap: () {},
                child: Text(
                  "Tell us about you.",
                  style: GoogleFonts.poppins(
                    color: Color.fromRGBO(255, 87, 87, 30),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 16, top: 10),
              child: Form(
                child: Column(
                  children: <Widget>[

                Row(
                children: [
                Expanded(
                child: DropdownButtonFormField<String>(
                hint: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Text(
                  'Your Gender:',
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ),
              isExpanded: true,
              icon: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Icon(
                  Icons.arrow_drop_down,
                  size: 0,
                ),
              ),
              value: selectedGender,
              decoration: InputDecoration(
                labelText: 'Gender',
                border: OutlineInputBorder(),
              ),
              onChanged: (newValue) {
                setState(() {
                  selectedGender = newValue;
                });
              },
              items: [
                DropdownMenuItem<String>(
                  value: 'Male',
                  child: Text('Male'),
                ),
                DropdownMenuItem<String>(
                  value: 'Female',
                  child: Text('Female'),
                ),
              ],
            ),
    ),
    ],
                ),
                    Text(
                      selected ?? '', // Add a null check to prevent errors
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        controller: _dateController,
                        decoration: InputDecoration(
                          hintText: 'Your Birthday Date',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.2),
                              width: 2.0,
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                        onTap: () {
                          _showDatePicker(context);

                        },
                      ),
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     showModalBottomSheet(
                    //       context: context,
                    //       builder: (BuildContext builder) {
                    //         return Container(
                    //           height: MediaQuery.of(context).copyWith().size.height / 3,
                    //           child: Row(
                    //             children: [
                    //               Expanded(
                    //                 child: CupertinoPicker(
                    //                   itemExtent: 32.0,
                    //                   onSelectedItemChanged: (int index) {
                    //                     setState(() {
                    //                       _selectedFeet = index + 3; // start at 3 feet
                    //                     });
                    //                   },
                    //                   children: List<Widget>.generate(8, (int index) {
                    //                     return Center(
                    //                       child: Text((index + 3).toString()),
                    //                     );
                    //                   }),
                    //                 ),
                    //               ),
                    //               Expanded(
                    //                 child: CupertinoPicker(
                    //                   itemExtent: 32.0,
                    //                   onSelectedItemChanged: (int index) {
                    //                     setState(() {
                    //                       _selectedInches = index;
                    //                     });
                    //                   },
                    //                   children: List<Widget>.generate(12, (int index) {
                    //                     return Center(
                    //                       child: Text(index.toString()),
                    //                     );
                    //                   }),
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         );
                    //       },
                    //     );
                    //   },
                    //   child: AbsorbPointer(
                    //     child: TextFormField(
                    //       decoration: InputDecoration(
                    //         labelText: "Height",
                    //         suffixText: "ft in",
                    //       ),
                    //       initialValue: '$_selectedFeet\' $_selectedInches"',
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        child: TextFormField(
                          controller: _textEditingController,
                          keyboardType: TextInputType.number,

                          decoration: InputDecoration(
                            hintText: 'Height',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.2),
                                width: 2.0,
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2.0,
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2.0,
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                          onTap: () async {
                            List<dynamic>? selectedHeight = await showDialog(
                              context: context,
                              builder: (context) => HeightPickerDialog(),
                            );
                            if (selectedHeight != null) {
                              if (selectedHeight.length == 2) {
                                // Selected height is in feet and inches
                                int feet = selectedHeight[0];
                                int inches = selectedHeight[1];
                                String heightText = '$feet feet, $inches inches';
                                _textEditingController.text = heightText;
                              } else if (selectedHeight.length == 1) {
                                // Selected height is in centimeters
                                int centimeters = selectedHeight[0];
                                String heightText = '$centimeters cm';
                                _textEditingController.text = heightText;
                              }
                            }
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        child: TextFormField(
                          controller: _textEditingController1,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Weight',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.2),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                          onTap: () async {
                            List<dynamic>? selectedWeight = await showDialog(
                              context: context,
                              builder: (context) => WidthPickerDialog(),
                            );

                            if (selectedWeight != null && selectedWeight.isNotEmpty) {
                              if (selectedWeight.length == 1) {
                                // Selected weight is in kilograms
                                int kg = selectedWeight[0];
                                String weightText = '$kg KG';
                                _textEditingController1.text = weightText;
                              } else if (selectedWeight.length == 2) {
                                // Selected weight is in pounds
                                int pound = selectedWeight[1];
                                String weightText2 = '$pound Lbs';
                                _textEditingController1.text = weightText2;
                              }
                            }
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10,top: 210, bottom: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Edit_Profile()));
                          _updateSelectedValues();

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
                              "Continue",
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


class WidthPickerDialog extends StatefulWidget {
  @override
  _WidthPickerDialogState createState() => _WidthPickerDialogState();
}

class _WidthPickerDialogState extends State<WidthPickerDialog> {


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
            'Select Weight',
            style: GoogleFonts.poppins(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
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
                    activeBgColors: [
                      [Color.fromRGBO(255, 87, 87,30)],
                      [Color.fromRGBO(255, 87, 87,30)]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey.withOpacity(0.3),
                    inactiveFgColor: Colors.grey.withOpacity(0.8),
                    labels: ['KG', 'Pound'],
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
              if (useFeetAndInches) _buildKGWheel(),
              if (useFeetAndInches) SizedBox(width: 8),
              if (!useFeetAndInches) _buildCentimetersWheel(),
              if (useFeetAndInches) Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Text("KG.",style: GoogleFonts.poppins(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
                ),
              ),
              if (!useFeetAndInches) Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Text("Lbs.",style: GoogleFonts.poppins(
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
        children: List.generate(200, (index) {
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

  Widget _buildCentimetersWheel() {
    return Container(
      height: 150,
      width: 100,
      child: ListWheelScrollView(
        itemExtent: 50,
        children: List.generate(700, (index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20),
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
            selectedPound = index;
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
