import 'package:flutter/material.dart';

class SearchPag extends StatefulWidget {
  @override
  _SearchPagState createState() => _SearchPagState();
}

class _SearchPagState extends State<SearchPag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 37,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xffC9D3D6),
            blurRadius: 6.0,
            offset: Offset(0.0, 2.0),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextFormField(
        //        controller: _passwordController,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: new InputDecoration(
          contentPadding: EdgeInsets.only(top: 6, bottom: 6),
          hintText: 'البحث',
          filled: true,
          fillColor: Color(0xffF6F6F6),
          border: InputBorder.none,
//              borderRadius: BorderRadius.circular(25), ),
        ),
      ),
    );
  }
}
