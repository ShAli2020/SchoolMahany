import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mahanyuupdate/GUI/compnents/Search.dart';

import 'DeptName.dart';

class DeptDetial extends StatefulWidget {
  @override
  _DeptDetialState createState() => _DeptDetialState();
}

class _DeptDetialState extends State<DeptDetial> {
  List date = [
    "assats/imag/3.png",
    "assats/imag/3.png",
    "assats/imag/3.png",
    "assats/imag/3.png"
  ];
  List title = [
    "اجهزة طبية ",
    "اجهزة طبية ",
    "اجهزة طبية ",
    "اجهزة طبية ",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        title: new Text(
          "الاقسام",
          textAlign: TextAlign.center,
          style: new TextStyle(
            color: Color(0xff3E6B6B),
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xffF6F6F6),
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xff3E6B6B)),
        elevation: 4,
      ),
      backgroundColor: Color(0xffF6F6F6),
      body: Column(children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
          child: Container(height: 37, width: 200, child: SearchPag()),
        ),
        Expanded(
          child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: date.length,
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DeptName(imgPath: date[i], title: title[i]);
                      }),
                    );
                  },
                  child: _buildListItem(
                    date[i],
                    title[i],
                  ),
                );
              }),
        ),
      ]),
    );
  }

  _buildListItem(String imgPath, String Title) {
    return Padding(
      padding:
          EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 400.0,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffC9D3D6),
                  blurRadius: 6.0,
//                    spreadRadius: 5.0,
                  offset: Offset(0.0, 2.0),
                ),
              ],
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 30,
              width: 160,
              child: Center(
                child: Text(
                  Title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14.0,
                      wordSpacing: 1.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
