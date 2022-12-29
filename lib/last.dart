import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task2/home.dart';
import 'dart:math';

class Last extends StatefulWidget {
  @override
  State<Last> createState() => _LastState();
}

String generateRandomString(int length) {
  final random = Random();
  const availableChars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  final randomString = List.generate(length,
      (index) => availableChars[random.nextInt(availableChars.length)]).join();

  return randomString;
}

class _LastState extends State<Last> {
  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.replay),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Home()));
        },
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.cyan,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "",
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: _w * 0.05),
            child: Icon(
              Icons.menu,
              color: Colors.cyan,
            ),
          )
        ],
        // brightness: Brightness.light,
        systemOverlayStyle: SystemUiOverlayStyle(
          // statusBarColor: Colors.white,
          // statusBarBrightness: Brightness.dark,
          // systemStatusBarContrastEnforced: true,
          statusBarIconBrightness: Brightness.light,
        ),
        elevation: 6.0,
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(
            color: Colors.cyan, fontSize: 22, fontWeight: FontWeight.bold),
        shadowColor: Colors.cyan,
        shape: Border.all(color: Colors.cyan, width: 2.0),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Card(
              elevation: 9,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: _h * 0.7,
                    width: _w * 0.9,
                    child: Column(
                      children: [
                        Container(
                          height: _h * 0.4,
                          width: _w * 0.5,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('assets/thank.png'),
                          )),
                        ),
                        Text(
                          "Thank you for acquiring our service. We hope we will see you soon.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.w100),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Please note your ticket number!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w100),
                        ),
                        Text(
                          generateRandomString(10),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(50),
                      gradient:
                          LinearGradient(colors: [Colors.cyan, Colors.blue])),
                  height: _h * 0.08,
                  width: _w * 0.85,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Text(
                        "Home",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))))
        ],
      ),
    );
  }
}
