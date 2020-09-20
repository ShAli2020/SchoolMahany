import 'package:flutter/material.dart';

import 'CallMe.dart';
import 'Sebjects.dart';

class DeptName extends StatefulWidget {
  final imgPath, title;
  DeptName({this.imgPath, this.title});
  @override
  _DeptNameState createState() => _DeptNameState();
}

class _DeptNameState extends State<DeptName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Column(
        children: <Widget>[
          Stack(children: <Widget>[
            Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.fitWidth),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Container(
//                alignment: Alignment.topLeft,
//      padding: EdgeInsets.only(left: 20),
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                    height: 50,
                    width: 150,
                    child: Text(
                      widget.title,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ]),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 4, right: 7, left: 7, bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF5F5F5),
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
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    Container(
                        height: 50,
                        width: 100,
                        child: Text(
                          widget.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff3E6B6B),
                          ),
                        )),
                    Container(
                      child: Text(
                        "وهي مبادرة إنسانية غير ربحية تهدف الى خدمة المجتمع عن طريق البرمجة (Programming)  . "
                        " تعتبر (Code For Iraq) مبادرة تعليمية حقيقية ترعى المهتمين "
                        " بتعلم تصميم وبرمجة تطبيقات الهاتف الجوال ومواقع الانترنت وبرامج الحاسوب والشبكات "
                        "   و الاتصالات و نظم  تشغيل لحاسوب باستخدام التقنيات مفتوحة المصدر  (Open Source)   ،"
                        " كما توفرلهم جميع الدروس التعليمية  اللازمة بشكل مجاني تماما ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xff3E6B6B)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff3E6B6B),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: new InkWell(
                        child: Center(
                            child: new Text(
                          "المعلومات",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffC9D3D6),
                          ),
                        )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return CallMe();
                            }),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff3E6B6B),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: new InkWell(
                        child: Center(
                            child: new Text(
                          "المناهج",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffC9D3D6),
                          ),
                        )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Sebject();
                            }),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff3E6B6B),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: new InkWell(
                        child: Center(
                            child: new Text(
                          "الكليات",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffC9D3D6),
                          ),
                        )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return CallMe();
                            }),
                          );
                        },
                      ),
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
