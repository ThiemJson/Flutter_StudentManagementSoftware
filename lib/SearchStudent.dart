import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:student_management_software/StudentInfor.dart';
import 'Responsive.dart';



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Search Student",
      theme: ThemeData(
        primaryColor: Color(0xFF832685),
        primaryColorLight: Color(0xFFC81379),
        accentColor: Color(0xfffaf2f8)
      ),
      home: SearhStudent(),
    );
  }
}



class SearhStudent extends StatefulWidget {
  @override
  _SearhStudentState createState() => _SearhStudentState();
}

class _SearhStudentState extends State<SearhStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.lime,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        //backgroundColor: Color(0xFF832685),
//        backgroundColor: Colors.indigoAccent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [Color(0xFF832685),Color(0xFFC81379)])
          ),
        ),
        title: Text("Search Student", style: TextStyle(fontSize: 30, color: Colors.white),),
        leading: Icon(
          Icons.account_circle, color: Colors.white, size: 40,
        ),
      ),
      body: SafeArea(
        //minimum: EdgeInsets.all(10),
          child: Container(
            width: 1000,
            height: 1000,
            color: Colors.deepPurpleAccent,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                  elevation: 29,
                  color: Colors.blue,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    width: 1000*0.55,
                    height: 150,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      StudentInfor('Nguyễn Cao Thiêm', "60TH3", "1851061743", "Information Technology", "Thuyloi University",true),
                      StudentInfor('Nguyễn Văn A', "60HT", "1851161111", "Công tác quốc tế", "Đại học Sư phạm Hà Nội",false),
                      StudentInfor('Nguyễn Văn Dũng', "60TH1", "1851160151", "Information Technology", "Thuyloi University",true),
                      StudentInfor('Nguyễn Cao Thiêm', "60TH3", "1851061743", "Information Technology", "Thuyloi University",false),
                    ],
                  ),
                ),

              ],
            ),
          )
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.search, color: Colors.white, size: 21,),
        onPressed: null,
        elevation: 29,
        backgroundColor: Colors.indigo,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        label: Text("SEARCH", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),),
      ),
    );
  }
}
