//=======صفحة التفاصيل=======

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mahanyuupdate/GUI/Pag/DashBord.dart';
import 'package:mahanyuupdate/GUI/compnents/Plac-map.dart';

class SchoolDetailPag extends StatefulWidget {
  final imgPath, title;
  SchoolDetailPag({this.imgPath, this.title});
  @override
  _SchoolDetailPagState createState() => _SchoolDetailPagState();
}

class _SchoolDetailPagState extends State<SchoolDetailPag> {
//  List pages = [
//    CallMe(),
//    LocationPlacePage(),
//    CallMe(),
//  ];
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF6F6F6),
        body: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 10),
              child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage(widget.imgPath),
                        fit: BoxFit.fitWidth),
                  )),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 200, right: 7, left: 7, bottom: 8),
                child: Container(
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: <Widget>[
                      Container(
                          height: 50,
                          width: 100,
                          child: Text(
                            widget.title,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff3E6B6B),
                            ),
                          )),
                      Container(
                        child: Text(
                          "اسست سنة 1970  الموقع القديم والكائن في صناعة وادي عكاب اما الموقع الحالي  تقع"
                          'لجانب الأيمن حي الصناعة القديمة  اقرب نقطة دالة جامع أبو زعيان  والذي تعرض للتدمير الكامل  جراء عمليات التحرير'
                          'ادناس داعش الإرهابي تاسست سنة 1980 '
                          "الفرع التجاري : ويحتوي على قسم التجارة فقط",
                          textAlign: TextAlign.right,
                          style:
                              TextStyle(color: Color(0xff3E6B6B), fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: new Container(
          height: 60,
//              color: Color(0xff3E6B6B),
          decoration: BoxDecoration(
            color: Color(0xffF6F6F6),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Color(0xf000000),
                blurRadius: 50,
                offset: Offset(0.0, -5.0),
              ),
            ],
          ),
          child: Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DashBorad();
                  }));
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Color(0xffC9D3D6),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: new InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LocationPlacePage();
                  }));
                },
                child: Icon(
                  Icons.location_on,
                  size: 30,
                  color: Color(0xffC9D3D6),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
//                  Navigator.push(context, MaterialPageRoute(builder: (context) {
//                    return DashBorad();
//                  }));
                },
                child: Icon(
                  Icons.face,
                  size: 30,
                  color: Color(0xffC9D3D6),
                ),
              ),
            ),
          ]),
        ));
  }
}
