import 'package:flutter/material.dart';

//class Responsive{
//  static width(BuildContext context)
//  {
//    return MediaQuery.of(context).size.width;
//  }
//  static height(BuildContext context)
//  {
//    return MediaQuery.of(context).size.height;
//  }
//}

class MyApp_Res extends StatefulWidget {
  @override
  _MyApp_ResState createState() => _MyApp_ResState();
}

class _MyApp_ResState extends State<MyApp_Res> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Search Student",
      theme: ThemeData(
          //primaryColor: Color(0xFF832685),
          //primaryColorLight: Color(0xFFC81379),
          //accentColor: Color(0xFFFAF2F8)
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Text Text_Appbar = new Text("Test Gradiant", style: TextStyle(fontSize: 25, color: Colors.white),);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 60,
        title: Text("Test Grad", style: TextStyle(fontSize: 25, color: Colors.white),),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              /*gradient: LinearGradient(colors: [Colors.red, Colors.blue],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  )*/
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [Color(0xFF832685),Color(0xFFC81379)])
          ),
        ),
      ),
      body: Center(
        child: Text("Hello Wordld"),
      ),
    );
  }
}
