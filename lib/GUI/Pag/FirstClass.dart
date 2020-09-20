import 'package:flutter/material.dart';
import 'package:mahanyuupdate/GUI/compnents/Search.dart';

import 'DeptName.dart';

class FirstClass extends StatefulWidget {
  @override
  _FirstClassState createState() => _FirstClassState();
}

class _FirstClassState extends State<FirstClass> {
  List title = [
    "التربية الاسلامية ",
    "التربية الاسلامية ",
    "التربية الاسلامية ",
    "التربية الاسلامية "
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
          "المرحلة الاولى",
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
              itemCount: title.length,
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DeptName(title: title[i]);
                      }),
                    );
                  },
                  child: _buildListItem(
                    title[i],
                  ),
                );
              }),
        ),
      ]),
    );
  }

  _buildListItem(String Title) {
    return Padding(
      padding:
          EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 300.0,
            width: 300,
            decoration: BoxDecoration(
              color: Color(0xff3E6B6B),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffC9D3D6),
                  blurRadius: 6.0,
//                    spreadRadius: 5.0,
                  offset: Offset(0.0, 2.0),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Container(
                      height: 80.0,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                          image: AssetImage("assats/School/book.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        height: 30,
                        width: 160,
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
            ),
          ),
        ],
      ),
    );
  }
}
