import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task2/home.dart';
import 'package:task2/last.dart';
import 'package:task2/reserve.dart';

class Package extends StatefulWidget {
  @override
  State<Package> createState() => _PackageState();
}

class _PackageState extends State<Package> {
  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.cyan,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Package",
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: _h * 0.02,
            ),
            // Card 1
            Card(
              title: "51 Shirts Dry Clean",
              subtitle: "10",
              price: "60",
              piclink: "assets/a1.png",
            ),

            // Card 2
            Card(
              title: "Shirts Jeans Dry Clean",
              subtitle: "5",
              price: "40",
              piclink: "assets/a2.png",
            ),

            // Card 3
            Card(
              title: "6 Jeans Dry Clean",
              subtitle: "10",
              price: "80",
              piclink: "assets/a3.png",
            ),

            // Card 4
            Card(
              title: "2 Uniform Cry Clean",
              subtitle: "20",
              price: "50",
              piclink: "assets/a4.png",
            ),

            // Car51
            Card(
              title: "2 Linen Dry Clean",
              subtitle: "30",
              price: "80",
              piclink: "assets/a5.png",
            ),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  String title, subtitle, price, piclink;

  Card({this.title, this.subtitle, this.price, this.piclink});

  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Reserve()));
      },
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: _w * 0.06, vertical: _h * 0.03),
        height: _h * 0.22,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0.5,
                  blurRadius: 2.2,
                  offset: Offset(1, 1))
            ],
            borderRadius: BorderRadius.circular(12.0)),
        child: Row(
          children: [
// Item Pic
            Container(
              height: double.infinity,
              width: _w * 0.35,
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0.5,
                      blurRadius: 2.2,
                      offset: Offset(1, 1))
                ],
              ),
              child: Image.asset(piclink),
            ),
// title & price
            Container(
              width: _w * 0.52,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.cyan, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "(\$$price)",
                        style: TextStyle(
                            color: Colors.cyan, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
// subtitle
                  Text(
                    'You will get \$$subtitle off on this item',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.cyan,
                    ),
                  ),

                  Row(
                    children: [
                      SizedBox(
                        width: _w * 0.03,
                      ),
// feature1
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 5.0),
                            height: _h * 0.07,
                            width: _w * 0.12,
                            decoration: BoxDecoration(
                              color: Colors.cyan[100],
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 0.5,
                                    blurRadius: 2.2,
                                    offset: Offset(1, 1))
                              ],
                            ),
                            child: Image.asset(
                              "assets/b1.png",
                              scale: 5,
                            ),
                          ),
                          Text(
                            'Wash',
                            style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),

                      SizedBox(
                        width: _w * 0.02,
                      ),
// feature2
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 5.0),
                            height: _h * 0.07,
                            width: _w * 0.12,
                            decoration: BoxDecoration(
                              color: Colors.cyan[100],
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 0.5,
                                    blurRadius: 2.2,
                                    offset: Offset(1, 1))
                              ],
                            ),
                            child: Image.asset("assets/b2.png", scale: 6),
                          ),
                          Text(
                            'Dryclean',
                            style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),

                      SizedBox(
                        width: _w * 0.02,
                      ),
// feature3
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 5.0),
                            height: _h * 0.07,
                            width: _w * 0.12,
                            decoration: BoxDecoration(
                              color: Colors.cyan[100],
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 0.5,
                                    blurRadius: 2.2,
                                    offset: Offset(1, 1))
                              ],
                            ),
                            child: Image.asset("assets/b3.png"),
                          ),
                          Text(
                            'Iron',
                            style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
