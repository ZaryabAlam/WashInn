import 'package:flutter/material.dart';
import 'package:task2/package.dart';

class First extends StatefulWidget {
  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: _h * 0.07,
            ),
///////////////////////////////////////////////////////////////////////
            Center(
              child: Container(
                height: 210,
                width: 210,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/wlogo2.png'),
                        fit: BoxFit.contain)),
              ),
            ),
            SizedBox(
              height: _h * 0.04,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Best Rates,",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue[600]),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Ideal Service,",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue[600]),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Perfect Cleaning!",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue[600]),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: _h * 0.06,
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
                        gradient: LinearGradient(
                            colors: [Colors.cyan[500], Colors.blue[800]])),
                    height: _h * 0.08,
                    width: _w * 0.85,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Package()));
                        },
                        child: Text(
                          "Get Started",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        )))),
            SizedBox(
              height: _h * 0.15,
            ),
///////////////////////////////////////////////////////////////////////

            Column(
              children: [
                Text(
                  "Delevoped by © Zaryab Alam",
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w300),
                ),
                Text(
                  "Made for MS-Global Inc with LOVE",
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w300),
                ),
                Text(
                  'Terms of Service | Privacy Policy',
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
