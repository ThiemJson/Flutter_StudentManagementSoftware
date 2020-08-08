import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:student_management_software/StudentInfor.dart';
import 'Responsive.dart';
import 'StudentInfor.dart';


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

  List<StudentInfor> StudentInfors = [
    StudentInfor('Nguyễn Cao Thiên', "60TH3", "1851061743", "Information Technology", "Thuyloi University",true),
    StudentInfor('Nguyễn Văn A', "60HT", "1851161111", "Công tác quốc tế", "Đại học Sư phạm Hà Nội",false),
    StudentInfor('Nguyễn Văn Dũng', "61TH1", "1851160151", "Information Technology", "Thuyloi University",true),
    StudentInfor('Nguyễn Cao Thiêm1', "45TH3", "1851061743", "Buôn lậu", "Thuyloi University",false),
    StudentInfor('Nguyễn Ngọc Minh Châu', "34TH3", "1851061743", "Information Technology", "Thuyloi University",false),
    StudentInfor('Trương Việt Thắng', "90TH3", "1851061743", "Information Technology", "Thuyloi University",true),
    StudentInfor('Vũ Hồng Quân', "60TH3", "1851061743", "Information Technology", "Thuyloi University",false),
    StudentInfor('Lâm Thị Kiều', "60TH3", "1851061743", "Information Technology", "Thuyloi University",true),
    StudentInfor('Nguyễn Văn Mạnh', "60TH3", "1851061743", "Information Technology", "Thuyloi University",false),
    StudentInfor('Trương Tiến Đạt', "60TH3", "1851061743", "Information Technology", "Thuyloi University",true),
    StudentInfor('Nguyễn Cao Thiên', "60TH3", "1851061743", "Information Technology", "Thuyloi University",true),
    StudentInfor('Nguyễn Văn A', "60HT", "1851161111", "Công tác quốc tế", "Đại học Sư phạm Hà Nội",false),
    StudentInfor('Nguyễn Văn Dũng', "61TH1", "1851160151", "Information Technology", "Thuyloi University",true),
    StudentInfor('Nguyễn Cao Thiêm1', "45TH3", "1851061743", "Buôn lậu", "Thuyloi University",false),
    StudentInfor('Nguyễn Ngọc Minh Châu', "34TH3", "1851061743", "Information Technology", "Thuyloi University",false),
    StudentInfor('Trương Việt Thắng', "90TH3", "1851061743", "Information Technology", "Thuyloi University",true),
    StudentInfor('Vũ Hồng Quân', "60TH3", "1851061743", "Information Technology", "Thuyloi University",false),
    StudentInfor('Lâm Thị Kiều', "60TH3", "1851061743", "Information Technology", "Thuyloi University",true),
    StudentInfor('Nguyễn Văn Mạnh', "60TH3", "1851061743", "Information Technology", "Thuyloi University",false),
    StudentInfor('Trương Tiến Đạt', "60TH3", "1851061743", "Information Technology", "Thuyloi University",true),
    StudentInfor('Nguyễn Văn Mạnh', "60TH3", "1851061743", "Information Technology", "Thuyloi University",false),
    StudentInfor('Trương Tiến Đạt', "60TH3", "1851061743", "Information Technology", "Thuyloi University",true),
  ];






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF832685),
      appBar: AppBar(
        elevation: 20,
        centerTitle: false,
        //backgroundColor: Color(0xFF832685),
//        backgroundColor: Colors.indigoAccent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [Color(0xFFC81379), Color(0xFF832685)])
          ),
        ),
        title: Text("Search Student", style: TextStyle(fontSize: 30, color: Colors.white),),
        leading: Icon(
          Icons.account_circle, color: Colors.white, size: 40,
        ),
      ),
      body: SafeArea(
        //minimum: EdgeInsets.all(12),
          child: Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                    elevation: 10,
                    color: Colors.blue,
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      height: MediaQuery.of(context).size.height*0.2,
                      padding: EdgeInsets.all(12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      height: MediaQuery.of(context).size.height*0.4,
                      child: ListView.builder(
                        itemCount: StudentInfors.length,
                        itemBuilder: (BuildContext context, int index){
                          return StudentInfors[index];
                        },
                      ),
                    ),
                  ),
                ],
              ),
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

