import 'package:flutter/material.dart';

class SearhStudent extends StatefulWidget {
  @override
  _SearhStudentState createState() => _SearhStudentState();
}

class _SearhStudentState extends State<SearhStudent> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SearchStudent",
      home: Scaffold(
        //backgroundColor: Colors.lime,
        appBar: AppBar(
          elevation: 50,
          centerTitle: true,
          backgroundColor: Colors.indigoAccent,
          title: Text("Search Student", style: TextStyle(fontSize: 30, color: Colors.white),),
          leading: Icon(
            Icons.account_circle, color: Colors.white, size: 40,
          ),
        ),
        body: SafeArea(
          //minimum: EdgeInsets.all(10),
          child: Container(
            color: Colors.deepPurpleAccent,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                  elevation: 29,
                  color: Colors.deepPurple,
                  child: Container(

                  ),
                ),
                SizedBox(height: 20,),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                  elevation: 29,
                  color: Colors.blue,
                )
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
      ),
    );
  }
}
