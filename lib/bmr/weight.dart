import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../gym/goals.dart';
import '../gym/limitations.dart';
import '../gym/weight_nav.dart';
import '../home/profile/about_you.dart';

class Weight_NavBar extends StatefulWidget {
  const Weight_NavBar({Key? key}) : super(key: key);

  @override
  State<Weight_NavBar> createState() => _Weight_NavBarState();
}

class _Weight_NavBarState extends State<Weight_NavBar>   with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor:Color.fromRGBO(29, 69, 100, 30),
          centerTitle: true,
          title: Text(
            "BMR Calculator",style: GoogleFonts.poppins(
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
              icon: Icon(Icons.info,color: Colors.white,size: 26,),
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
            TabBar(
              controller: _tabController,
              unselectedLabelColor: Colors.black,
              labelColor:Color.fromRGBO(255, 87, 87,30),
              indicatorColor: Color.fromRGBO(255, 87, 87,30),

              tabs: [
                Tab(text: 'Men'),
                Tab(text: 'Women'),
              ],
              labelStyle:
              GoogleFonts.poppins(color: Color.fromRGBO(255, 87, 87,30),
                  fontSize: 16,fontWeight: FontWeight.bold),
              labelPadding: EdgeInsets.only(left: 60, right: 60),
              isScrollable: true,
            ),
            Container(
              height: 900,
              width: MediaQuery.of(context).size.width,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 16,top: 20),
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: 'Age:',
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
                                    List<dynamic> selectedHeight = await showDialog(
                                      context: context,
                                      builder: (context) => AgeDialog(),
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25 ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Height CM:',
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
                                      List<dynamic> selectedHeight = await showDialog(
                                        context: context,
                                        builder: (context) => HeightPickerDialog(),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25 ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Weight KG:',
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
                                      List<dynamic> selectedHeight = await showDialog(
                                        context: context,
                                        builder: (context) => WidthPickerDialog(),
                                      );
                                    },

                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10, top: 20, bottom: 10),
                                child: InkWell(
                                  onTap: (){
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 350,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 87, 87, 30),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Calculate",
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15,left: 20),
                        child: Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width/1.1,
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
                                child: Text("Your BMR:",style: GoogleFonts.poppins(
                                  color: Colors.grey.withOpacity(0.6),
                                  fontSize: 14,
                                ),),
                              ),
                              SizedBox(
                                height:5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text("33,224",style: GoogleFonts.poppins(
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
                        padding: const EdgeInsets.only(top: 25,left: 20),
                        child: Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width/1.1,
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
                                    "Total daily energy expenditure( TDEE ):",
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
                                  child: Text("1.324 Light",style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),),
                                ),
                              ],
                            )
                        ),
                      ),

                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 16,top: 20),
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: 'Age:',
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
                                      List<dynamic> selectedHeight = await showDialog(
                                        context: context,
                                        builder: (context) => AgeDialog(),
                                      );
                                    },

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25 ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Height CM:',
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
                                      List<dynamic> selectedHeight = await showDialog(
                                        context: context,
                                        builder: (context) => HeightPickerDialog(),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25 ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Weight KG:',
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
                                      List<dynamic> selectedHeight = await showDialog(
                                        context: context,
                                        builder: (context) => WidthPickerDialog(),
                                      );
                                    },
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
                                        "Calculate",
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15,left: 20),
                        child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width/1.1,
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
                                  child: Text("Your BMR:",style: GoogleFonts.poppins(
                                    color: Colors.grey.withOpacity(0.6),
                                    fontSize: 14,
                                  ),),
                                ),
                                SizedBox(
                                  height:5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text("33,224",style: GoogleFonts.poppins(
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
                        padding: const EdgeInsets.only(top: 25,left: 20),
                        child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width/1.1,
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
                                    "Total daily energy expenditure( TDEE ):",
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
                                  child: Text("1.324 Light",style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),),
                                ),
                              ],
                            )
                        ),
                      ),

                    ],
                  ),
                ],
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