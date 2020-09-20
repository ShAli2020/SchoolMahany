import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mahanyuupdate/GUI/Pag/DepartDetial.dart';

class DepartAs extends StatefulWidget {
  final imgPath, title;
  DepartAs({this.imgPath, this.title});
  @override
  _DepartAsState createState() => _DepartAsState();
}

class _DepartAsState extends State<DepartAs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Column(
        children: <Widget>[
          Stack(children: <Widget>[
            Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.fitWidth),
                )),
            Positioned(
              bottom: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Container(
                    height: 50,
                    width: 150,
                    child: Text(
                      " الفرع" + widget.title,
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
            child: Container(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 50,
                        width: 100,
                        child: Text(
                            "وهي مبادرة إنسانية غير ربحية تهدف الى خدمة المجتمع عن طريق البرمجة (Programming)  . "
                            " تعتبر (Code For Iraq) مبادرة تعليمية حقيقية ترعى المهتمين "
                            " بتعلم تصميم وبرمجة تطبيقات الهاتف الجوال ومواقع الانترنت وبرامج الحاسوب والشبكات "
                            "   و الاتصالات و نظم  تشغيل لحاسوب باستخدام التقنيات مفتوحة المصدر  (Open Source)   ،"
                            " كما توفرلهم جميع الدروس التعليمية  اللازمة بشكل مجاني تماما ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff3E6B6B),
                              fontSize: 15,
                            ))),
                  ),
                ],
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
                    padding: const EdgeInsets.only(left: 100, right: 7),
                    child: Container(
                      child: Center(
                        child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              size: 30,
                              color: Color(0xff3E6B6B),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
//                            context,
//                            MaterialPageRoute(builder: (context) {
//                              return DeptDetial();
                            }),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff3E6B6B),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: new InkWell(
                        child: Center(
                            child: new Text(
                          "الاقسام",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return DeptDetial();
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
