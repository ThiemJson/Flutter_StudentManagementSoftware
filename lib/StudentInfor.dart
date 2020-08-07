import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StudentInfor extends StatelessWidget {
  String _MaSV    = "";
  String _Hoten   = "";
  String _Lop     = "";
  String _Nganh   = "";
  String _Truong  = "";
  bool _isVerified = false;
  StudentInfor(this._Hoten, this._Lop, this._MaSV, this._Nganh, this._Truong, this._isVerified);

  Row getTitleOfListTileOfCard(){
    return (this._isVerified)?(
        new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(Icons.account_box, color: Colors.white, size: 24,),
            SizedBox(width: 5,),
            Text(this._Hoten, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21, color: Colors.white),),
            SizedBox(width: 10,),
            Icon(Icons.beenhere, color: Colors.white, size: 15,),
            SizedBox(width: 5,),
            Text("Verified Account", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)
          ],
        )
    ):
    (
        new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(Icons.account_box, color: Colors.white, size: 24,),
            SizedBox(width: 5,),
            Text(this._Hoten, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21, color: Colors.white),),
            SizedBox(width: 10,),
            Icon(Icons.cancel, color: Colors.redAccent, size: 15,),
            SizedBox(width: 5,),
            Text("Not Verified Account", style: TextStyle(color: Colors.redAccent, fontSize: 15, fontWeight: FontWeight.bold),)
          ],
        )
    );
  }

  Row getSubtitleOfTileOfCard(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        //Cot thu 1
        Container(
          margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
          alignment: Alignment.topRight,
          color: Colors.blue,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.contact_mail, color: Colors.white , size: 15,),
                  SizedBox(width: 5,),
                  Text(this._MaSV, style: TextStyle(fontSize: 15, color: Colors.white, fontStyle: FontStyle.italic),),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                children: <Widget>[
                  Icon(Icons.group, color: Colors.white , size: 15,),
                  SizedBox(width: 5,),
                  Text(this._Lop, style: TextStyle(fontSize: 15, color: Colors.white, fontStyle: FontStyle.italic),),
                ],
              ),
            ],
          ),
        ),
        SizedBox(width: 50,),
        // Cot thu 2
        Container(
          alignment: Alignment.topRight,
          //alignment: Alignment.topRight,
          color: Colors.blue,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.group_work, color: Colors.white , size: 15,),
                  SizedBox(width: 5,),
                  Text(this._Nganh, style: TextStyle(fontSize: 15, color: Colors.white, fontStyle: FontStyle.italic),),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                children: <Widget>[
                  Icon(Icons.account_balance, color: Colors.white , size: 15,),
                  SizedBox(width: 5,),
                  Text(this._Truong, style: TextStyle(fontSize: 15, color: Colors.white, fontStyle: FontStyle.italic),),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
      ),
      color: Colors.blue,
      child: ListTile(
        leading: Icon(Icons.account_circle, color: Colors.white, size: 50,),
        title: getTitleOfListTileOfCard(),
        subtitle: getSubtitleOfTileOfCard(),
        onTap: null,
      ),
    );
  }
}

