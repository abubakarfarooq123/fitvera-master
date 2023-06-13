import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fitvera/home/home_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Edit_Profile extends StatefulWidget {
  const Edit_Profile({Key? key}) : super(key: key);

  @override
  State<Edit_Profile> createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> {
  @override
  DateTime _selectedDate = DateTime.now();
  TextEditingController _dateController = TextEditingController();
  TextEditingController _textEditingController = TextEditingController();

  TextEditingController _textEditingController1 = TextEditingController();
  var phone = '';
  var email = "";
  var name = "";
  var password = "";
  var weight = '';
  var height = '';
  var dob = '';
  var location = '';
  var gender = '';






  String? selectedGender;

  void _updatenameValues() {

    String name2 = _nameController.text;
    FirebaseFirestore.instance
        .collection('registration')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .update({
      'name': name2,

    })
        .then((_) {
      print('Selected values updated successfully');
    })
        .catchError((error) {
      print('Error updating selected values: $error');
    });
  }

  String image = '';


  void _updateSelectedValues() {
    String height = _textEditingController.text;
    String weight = _textEditingController1.text;
    String birthdayDate = _dateController.text;
    String selectedGender1 = _genderController.text;
    String name1 = _nameController.text;
    String email1 = _emailController.text;
    String phone1 = _phoneController.text;
    String location1 = _locationController.text;
    String password1 = _passwordController.text;

    // Update selected height and weight in Firebase
    FirebaseFirestore.instance
        .collection('registration')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .update({
      'height': height,
      'weight': weight,
      'gender': selectedGender1,
      'dob': birthdayDate,
      'name': name1,
      'email': email1,
      'phone':phone1,
      'location':location1,
      'password':password1,
      'image': url,


    })
        .then((_) {
      print('Selected values updated successfully');
    })
        .catchError((error) {
      print('Error updating selected values: $error');
    });
  }
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _genderController = TextEditingController();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Object?> getValuesFromFirebase() async {
    DocumentSnapshot snapshot = await _firestore.collection('registration')
        .doc(FirebaseAuth.instance.currentUser?.uid).get();
    if (snapshot.exists) {
      return snapshot.data();
    }
    return {}; // Default empty map if the document doesn't exist
  }
  @override
  void initState() {

    super.initState();
    getValuesFromFirebase().then((values) {
      setState(() {
        Map<String, dynamic> data = values as Map<String, dynamic>;
        _nameController.text = data['name'] ?? '';
        _emailController.text = data['email']?.toString() ?? '';
        _phoneController.text = data['phone'] ?? '';
        _passwordController.text = data['password']?.toString() ?? '';
        _locationController.text = data['location'] ?? '';
        _genderController.text = data['gender']?.toString() ?? '';
        _textEditingController.text = data['height'] ?? '';
        _textEditingController1.text = data['weight']?.toString() ?? '';
        _dateController.text = data['dob'] ?? '';
        image = data['image'];
        // Update other controller values as needed
      });
    });
  }


  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _showDatePicker(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          children: [
            Container(
              height: 310,
              width: MediaQuery.of(context).size.width / 1.1,
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
                            child: Text(
                              "Confirm",
                              style: GoogleFonts.poppins(color: Colors.white),
                            ),
                          ),
                        ),
                        cancel: Container(
                          height: 60,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.withOpacity(0.4),
                          ),
                          child: Center(
                            child: Text(
                              "Cancel",
                              style: GoogleFonts.poppins(color: Colors.black54),
                            ),
                          ),
                        ),
                        backgroundColor: Colors.white,
                        itemTextStyle: TextStyle(color: Colors.black),
                        pickerHeight: 200.0,
                      ),
                      onCancel: () {
                        Navigator.pop(context, null);
                      },
                      onConfirm:
                          (DateTime? newDate, List<int>? selectedIndexes) {
                        if (newDate != null) {
                          setState(() {
                            _selectedDate = newDate;
                            _dateController.text =
                                DateFormat('dd-MM-yyyy').format(newDate);
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
  Future<void> _editValues() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
              child: Row(
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Icon(FontAwesomeIcons.multiply,size: 25,color: Colors.black,)),
                  SizedBox(
                    width: 40,
                  ),
                  Text('Edit Name',style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                ],
              )),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
            ],
          ),
          actions: [

            InkWell(
              onTap: () {
                _updatenameValues();
                Navigator.pop(context);
              },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width/1.3,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 87, 87, 30),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                    child: Text(
                        'Save',style: GoogleFonts.poppins(
                      color: Colors.white
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
      },
    );
  }
  @override

  String? url;
  uploadImage() async {
    final _firebaseStorage = FirebaseStorage.instance;
    final _imagePicker = ImagePicker();
    PickedFile image;

    //Check Permissions
    //Select Image
    image = (await _imagePicker.getImage(source: ImageSource.gallery))!;
    var file = File(image.path);
    int uploadTimestamp = DateTime.now().millisecondsSinceEpoch;
    if (image != null) {
      Reference ref =
      _firebaseStorage.ref().child('profileImages/$uploadTimestamp');
      UploadTask uploadTask = ref.putFile(file);

      var imageUrl = await (await uploadTask).ref.getDownloadURL();
      setState(() {
        url = imageUrl.toString();
      });
    } else {
      print('No Image Path Received');
    }
  }
  addImage() async {
    final _firebaseStorage = FirebaseStorage.instance;
    final _imagePicker = ImagePicker();
    PickedFile image;


    image = (await _imagePicker.getImage(source: ImageSource.camera))!;
    var file = File(image.path);
    int uploadTimestamp = DateTime.now().millisecondsSinceEpoch;
    if (image != null) {
      Reference ref =
      _firebaseStorage.ref().child('profileImages/$uploadTimestamp');
      UploadTask uploadTask = ref.putFile(file);

      var imageUrl = await (await uploadTask).ref.getDownloadURL();
      setState(() {
        url = imageUrl.toString();
      });
    } else {
      print('No Image Path Received');
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //top bar color
      systemNavigationBarColor: Colors.black, //bottom bar color
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: Color.fromRGBO(29, 69, 100, 30),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 140, // set the height of the app bar
        automaticallyImplyLeading: false, // hides the back arrow
        title: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 30,
                      )),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Text(
                        "My Profile",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 0.0),
                      child: Stack(
                        fit: StackFit.loose,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: ((builder) =>
                                    bottomSheet(context)),
                              );
                            },
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                url != null
                                    ? CircleAvatar(
                                  radius: 35.0,
                                  backgroundImage: NetworkImage(url!),
                                )
                                    : image != ''
                                    ? CircleAvatar(
                                  radius: 35.0,
                                  backgroundImage: NetworkImage(image),
                                )
                                    : CircleAvatar(
                                  radius: 35.0,
                                  backgroundColor: Colors.black,
                                  backgroundImage: AssetImage(
                                      'assets/images/profile.png'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
                            padding: const EdgeInsets.only(top: 0),
                            child: Text(
                              _nameController.text,
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  ),
                            ),
                          ),
                          Text(
                            _emailController.text,
                            style: GoogleFonts.poppins(
                              fontSize: 11.0,
                              color: Color.fromRGBO(255, 87, 87, 30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: IconButton(
                onPressed: _editValues,
                icon: Icon(
                  Icons.edit,
                  size: 30,
                )),
          )
        ],
      ),
      body: ClipRRect(
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(40.0),
                topRight: const Radius.circular(40.0),
              ),
              child: Container(
                height: 800.0,
                width: double.infinity,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Form(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 25),
                              child: Container(
                                width: 320,
                                height: 90,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 5),
                                      child: Text(
                                        "Phone Number :",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black54,
                                            fontSize: 12),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: _phoneController,
                                      decoration: InputDecoration(
                                        hintStyle: GoogleFonts.poppins(
                                          color: Colors.black,
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey.withOpacity(0.2),
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10),
                              child: Container(
                                width: 320,
                                height: 90,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 5),
                                      child: Text(
                                        "Location :",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black54,
                                            fontSize: 12),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: _locationController,
                                      decoration: InputDecoration(
                                        hintText: 'Address',
                                        hintStyle: GoogleFonts.poppins(
                                          color: Colors.black,
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey.withOpacity(0.2),
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10),
                              child: Container(
                                width: 320,
                                height: 90,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 5),
                                      child: Text(
                                        "Birthday :",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black54,
                                            fontSize: 12),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: _dateController,
                                      decoration: InputDecoration(
                                        hintStyle: GoogleFonts.poppins(
                                          color: Colors.black,
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey.withOpacity(0.2),
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                      ),
                                      onTap: () {
                                        _showDatePicker(context);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10),
                              child: Container(
                                width: 320,
                                height: 90,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 5),
                                      child: Text(
                                        "Height :",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black54,
                                            fontSize: 12),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: _textEditingController,
                                      decoration: InputDecoration(
                                        hintStyle: GoogleFonts.poppins(
                                          color: Colors.black,
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey.withOpacity(0.2),
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                      ),
                                      onTap: () async {
                                        List<dynamic>? selectedHeight =
                                            await showDialog(
                                          context: context,
                                          builder: (context) =>
                                              HeightPickerDialog(),
                                        );
                                        if (selectedHeight != null) {
                                          if (selectedHeight.length == 2) {
                                            // Selected height is in feet and inches
                                            int feet = selectedHeight[0];
                                            int inches = selectedHeight[1];
                                            String heightText =
                                                '$feet feet, $inches inches';
                                            _textEditingController.text =
                                                heightText;
                                          } else if (selectedHeight.length ==
                                              1) {
                                            // Selected height is in centimeters
                                            int centimeters = selectedHeight[0];
                                            String heightText =
                                                '$centimeters cm';
                                            _textEditingController.text =
                                                heightText;
                                          }
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10),
                              child: Container(
                                width: 320,
                                height: 90,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 5),
                                      child: Text(
                                        "Weight :",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black54,
                                            fontSize: 12),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: _textEditingController1,
                                      decoration: InputDecoration(
                                        hintStyle: GoogleFonts.poppins(
                                          color: Colors.black,
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey.withOpacity(0.2),
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                      ),
                                      onTap: () async {
                                        List<dynamic>? selectedWeight =
                                            await showDialog(
                                          context: context,
                                          builder: (context) =>
                                              WidthPickerDialog(),
                                        );

                                        if (selectedWeight != null &&
                                            selectedWeight.isNotEmpty) {
                                          if (selectedWeight.length == 1) {
                                            // Selected weight is in kilograms
                                            int kg = selectedWeight[0];
                                            String weightText = '$kg KG';
                                            _textEditingController1.text =
                                                weightText;
                                          } else if (selectedWeight.length ==
                                              2) {
                                            // Selected weight is in pounds
                                            int pound = selectedWeight[1];
                                            String weightText2 = '$pound Lbs';
                                            _textEditingController1.text =
                                                weightText2;
                                          }
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10),
                              child: Container(
                                width: 320,
                                height: 90,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 5),
                                      child: Text(
                                        "Gender :",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black54,
                                            fontSize: 12),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: _genderController,
                                      decoration: InputDecoration(
                                        hintStyle: GoogleFonts.poppins(
                                          color: Colors.black,
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey.withOpacity(0.2),
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10),
                              child: Container(
                                width: 320,
                                height: 90,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 5),
                                      child: Text(
                                        "Password :",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black54,
                                            fontSize: 12),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: _passwordController,
                                      decoration: InputDecoration(
                                        hintStyle: GoogleFonts.poppins(
                                          color: Colors.black,
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey.withOpacity(0.2),
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 18, top: 30, bottom: 15),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => homeNavBar()));
                                  _updateSelectedValues();
                                },
                                child: Container(
                                  height: 50,
                                  width: 320,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 87, 87, 30),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Save",
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
                    ],
                  ),
                ),
              ),

          ),
    );
  }
  Widget bottomSheet(context) {
    return Container(
      height: 80.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Profile photo",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 7.0,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            TextButton.icon(
              icon: Icon(
                Icons.camera,
                color: Color.fromARGB(255, 218, 162, 16),
                size: 30.0,
              ),
              onPressed: () {
                addImage();
                Navigator.pop(context);
              },
              label: Text("Camera"),
            ),
            SizedBox(
              width: 40.0,
            ),
            TextButton.icon(
              icon: Icon(
                Icons.image,
                color: Color.fromARGB(255, 218, 162, 16),
                size: 30.0,
              ),
              onPressed: () {
                uploadImage();
                Navigator.pop(context);
              },
              label: Text("Gallery"),
            ),
          ])
        ],
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
                    color: Colors.grey.withOpacity(0.3)),
                child: Center(
                  child: ToggleSwitch(
                    minWidth: 90.0,
                    minHeight: 40.0,
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Color.fromRGBO(255, 87, 87, 30)],
                      [Color.fromRGBO(255, 87, 87, 30)]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey.withOpacity(0.3),
                    inactiveFgColor: Colors.grey.withOpacity(0.8),
                    labels: ['Ft & Inch', 'CM'],
                    initialLabelIndex: useFeetAndInches ? 0 : 1,
                    onToggle: _toggleSwitch,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (useFeetAndInches) _buildFeetWheel(),
              if (useFeetAndInches) SizedBox(width: 8),
              if (useFeetAndInches) _buildInchesWheel(),
              if (!useFeetAndInches) _buildCentimetersWheel(),
              if (useFeetAndInches)
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Text(
                    "Ft.",
                    style: GoogleFonts.poppins(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              if (!useFeetAndInches)
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Text(
                    "CM.",
                    style: GoogleFonts.poppins(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
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
                  child: Text(
                    "Cancel",
                    style: GoogleFonts.poppins(
                      color: Colors.black54,
                    ),
                  ),
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
                  child: Text(
                    "Confirm",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                  ),
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
            padding: const EdgeInsets.only(left: 40),
            child: Column(
              children: [
                Center(
                  child: Text(
                    index.toString(),
                    style: TextStyle(
                        fontSize: 24,
                        color: Color.fromRGBO(29, 69, 100, 30),
                        fontWeight: FontWeight.bold),
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
                  style: TextStyle(
                      fontSize: 24,
                      color: Color.fromRGBO(29, 69, 100, 30),
                      fontWeight: FontWeight.bold),
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
                    style: TextStyle(
                        fontSize: 24,
                        color: Color.fromRGBO(29, 69, 100, 30),
                        fontWeight: FontWeight.bold),
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
                    color: Colors.grey.withOpacity(0.3)),
                child: Center(
                  child: ToggleSwitch(
                    minWidth: 90.0,
                    minHeight: 40.0,
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Color.fromRGBO(255, 87, 87, 30)],
                      [Color.fromRGBO(255, 87, 87, 30)]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey.withOpacity(0.3),
                    inactiveFgColor: Colors.grey.withOpacity(0.8),
                    labels: ['KG', 'Pound'],
                    initialLabelIndex: useFeetAndInches ? 0 : 1,
                    onToggle: _toggleSwitch,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (useFeetAndInches) _buildKGWheel(),
              if (useFeetAndInches) SizedBox(width: 8),
              if (!useFeetAndInches) _buildCentimetersWheel(),
              if (useFeetAndInches)
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Text(
                    "KG.",
                    style: GoogleFonts.poppins(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              if (!useFeetAndInches)
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Text(
                    "Lbs.",
                    style: GoogleFonts.poppins(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
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
                  child: Text(
                    "Cancel",
                    style: GoogleFonts.poppins(
                      color: Colors.black54,
                    ),
                  ),
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
                  child: Text(
                    "Confirm",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .pop(useFeetAndInches ? [selectedKG] : [selectedPound]);
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
                    style: TextStyle(
                        fontSize: 24,
                        color: Color.fromRGBO(29, 69, 100, 30),
                        fontWeight: FontWeight.bold),
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
                    style: TextStyle(
                        fontSize: 24,
                        color: Color.fromRGBO(29, 69, 100, 30),
                        fontWeight: FontWeight.bold),
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
