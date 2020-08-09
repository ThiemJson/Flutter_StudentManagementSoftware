import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class MyAppSignIn extends StatefulWidget {
  @override
  _MyAppSignInState createState() => _MyAppSignInState();
}

class _MyAppSignInState extends State<MyAppSignIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SigIn",
      theme: ThemeData(
        primaryColor: Color(0XFFC41A3B),
        primaryColorLight: Color(0XFFFBE0E6),
        accentColor: Color(0XFF1B1F32),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            color: Color(0XFFC41A3B),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 100.0,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 0.0, right: 0.0, bottom: 0.0),
                  child: Text('Sign In', style: TextStyle(color: Colors.white, fontSize: 28.0),),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 0.0, right: 0.0, bottom: 0.0),
                  child: Text('Welcome Back', style: TextStyle(fontSize: 14.00, fontStyle: FontStyle.italic, color: Colors.white),),
                ),
                SizedBox(height: 45,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(60.00), topRight: Radius.circular(120.00))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50.00, right: 50.00, top: 20.0, bottom: 0.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height/1.5,
                            padding: EdgeInsets.only(top: 60.00),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFBE0E6),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                        topLeft: Radius.circular(0),
                                        bottomLeft: Radius.circular(0),
                                    ),
                                    boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5.0)]
                                  ),
                                  width: MediaQuery.of(context).size.width/1.2,
                                  height: 55.0,
                                  padding: EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 0),
                                  child: TextField(
                                    cursorColor: Color(0xFFC41A3B),
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.mail, color: Color(0xFFC41A3B),),
                                      border: InputBorder.none,
                                      hintText: 'Email or Mobile Number  ',
                                      hintStyle: TextStyle(fontStyle: FontStyle.italic, color: Color(0xFF1B1F32))
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width/1.2,
                                  height: 55.0,
                                  padding: EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 0),
                                  margin: EdgeInsets.only(top: 25),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFBE0E6),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                        topLeft: Radius.circular(0),
                                        bottomLeft: Radius.circular(0),
                                      ),
                                      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5.0)]
                                  ),

                                  child: TextField(
                                    cursorColor: Color(0xFFC41A3B),
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                        icon: Icon(Icons.lock, color: Color(0xFFC41A3B),),
                                        suffixIcon: Icon(Icons.visibility_off, color: Color(0xFFC41A3B) ,),
                                        border: InputBorder.none,
                                        hintText: 'Password  ',
                                        hintStyle: TextStyle(fontStyle: FontStyle.italic, color: Color(0xFF1B1F32))
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
