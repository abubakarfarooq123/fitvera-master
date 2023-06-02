import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../home_navbar.dart';


class Languages extends StatefulWidget {
  const Languages({Key? key}) : super(key: key);

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  List<bool> isSelectedList = [false, false, false,false,false,false,false,false,false,false];
  List<String> containerText = ['English', 'Spanish', 'Chinese','French','German','Russian','Italian','Korean','Arbi','Japanese'];


  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //top bar color
      systemNavigationBarColor: Colors.black, //bottom bar color
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: Color.fromRGBO(29, 69, 100, 30),
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 40),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child:Icon(
                          Icons.cancel,
                          color: Colors.black54,
                          size: 35,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80,top: 40),
                      child: Text(
                        "Language",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width/1.1,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextFormField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.2),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.search,color: Colors.grey,),
                          onPressed: () {
                            // Handle search button press
                          },
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 16,right:16,top: 20 ),
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
                                  Text(
                                    containerText[i],
                                    style: GoogleFonts.poppins(
                                      color: isSelectedList[i] ? Colors.white : Colors.black,
                                      fontWeight: FontWeight.bold
                                    ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
