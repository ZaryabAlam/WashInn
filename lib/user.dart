import 'dart:html';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:task2/welcome.dart';
import 'package.dart';

class User extends StatefulWidget {
  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  TextEditingController _name = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _age = TextEditingController();
  TextEditingController _gender = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    List<String> items = ["Male", "Female", "Trans"];
    String seltectedItem = "Male";

    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 210,
              width: 210,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/wlogo1.png'),
                      fit: BoxFit.contain)),
            ),
          ),
///////////////////////////////////////////////////////////////////////////////////
          SizedBox(
            height: _h * 0.06,
          ),
//////////////////////////////////////////////////////////////////////////////////
          Text(
            "---- Enter your personal information for reservation -----",
            style: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 17,
                color: Colors.grey[700]),
          ),
///////////////////////////////////////////////////////////////////////////////////
          SizedBox(
            height: _h * 0.03,
          ),
//////////////////////////////////////////////////////////////////////////////////
          Container(
            height: _h * 0.08,
            width: _w * 0.85,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
            child: TextField(
              controller: _name,
              textInputAction: TextInputAction.next,
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                  labelText: 'Full Name',
                  labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.blue),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(60),
                  )),
            ),
          ),
///////////////////////////////////////////////////////////////////////////////////
          SizedBox(
            height: _h * 0.01,
          ),
//////////////////////////////////////////////////////////////////////////////////
          Container(
            height: _h * 0.08,
            width: _w * 0.85,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
            child: TextField(
              controller: _phone,
              textInputAction: TextInputAction.next,
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.blue),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(60),
                  )),
            ),
          ),
///////////////////////////////////////////////////////////////////////////////////
          SizedBox(
            height: _h * 0.01,
          ),
//////////////////////////////////////////////////////////////////////////////////
          Container(
            height: _h * 0.08,
            width: _w * 0.85,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
            child: TextField(
              controller: _age,
              textInputAction: TextInputAction.next,
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                  labelText: 'Age',
                  labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.blue),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(60),
                  )),
            ),
          ),
///////////////////////////////////////////////////////////////////////////////////
          SizedBox(
            height: _h * 0.01,
          ),
//////////////////////////////////////////////////////////////////////////////////
          Container(
            height: _h * 0.072,
            width: _w * 0.85,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
            child: DropdownButtonFormField<String>(
              focusColor: Colors.white,
              decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.blue),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.blue),
                    borderRadius: BorderRadius.circular(30),
                  )),
              value: seltectedItem,
              items: items
                  .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        // style: TextStyle(fontSize: 24),
                      )))
                  .toList(),
              onChanged: (item) => setState(() => seltectedItem = item),
            ),
          ),
///////////////////////////////////////////////////////////////////////////////////
          SizedBox(
            height: _h * 0.05,
          ),
//////////////////////////////////////////////////////////////////////////////////

          Container(
              height: _h * 0.08,
              width: _w * 0.85,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 7),
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      colors: [Colors.cyan[300], Colors.blue[800]])),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Welcome(
                              name: _name.text,
                              phone: _phone.text,
                              age: _age.text,
                            )));
                  },
                  child: Text(
                    "Save",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )))
        ],
      ),
    );
  }
}
