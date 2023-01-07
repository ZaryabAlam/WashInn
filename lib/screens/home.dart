import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:task2/screens/drop2.dart';
import 'package:task2/screens/extra.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

import 'user.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    AdvancedDrawer(
      backdropColor: Color(0xffb82b23),
      controller: _advancedDrawerController,
      child: SizedBox(),
      drawer: SizedBox(),
    );

    return AdvancedDrawer(
      backdropColor: Colors.blue[600],
      controller: _advancedDrawerController,
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (context, value, child) {
                return Icon(
                  value.visible ? Icons.clear_rounded : Icons.menu_rounded,
                  color: Colors.black54,
                  size: 30,
                );
              },
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: _h * 0.02,
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
                height: _h * 0.06,
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
                            fontSize: 37,
                            fontWeight: FontWeight.w900,
                            color: Colors.blue[600]),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Ideal Service,",
                        style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w900,
                            color: Colors.blue[600]),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Perfect Cleaning!",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            color: Colors.blue[600]),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: _h * 0.10,
              ),

              //
              Container(
                height: _h * 0.08,
                width: _w * 0.85,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: OutlineGradientButton(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Drop2()));
                  },
                  backgroundColor: Colors.white,
                  child: Center(child: Text('Register')),
                  gradient: LinearGradient(
                      colors: [Colors.cyan[300], Colors.blue[800]]),
                  strokeWidth: 3,
                  radius: Radius.circular(50),
                ),
              ),
              SizedBox(
                height: _h * 0.09,
              ),
///////////////////////////////////////////////////////////////////////
              Text(
                "---- Follow us for latest updates -----",
                style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 17,
                    color: Colors.grey[700]),
              ),
              SizedBox(
                height: _h * 0.015,
              ),
///////////////////////////////////////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: _h * 0.1,
                    width: _w * 0.2,
                    child: IconButton(
                        icon: Image.asset(
                          "assets/google.png",
                          fit: BoxFit.cover,
                        ),
                        onPressed: () async {
                          const url =
                              'https://accounts.google.com/v3/signin/identifier?dsh=S-251231302%3A1663782779691460&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F%26ogbl%2F&emr=1&ltmpl=default&ltmplcache=2&osid=1&passive=true&rm=false&scc=1&service=mail&ss=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin&ifkv=AQDHYWov1HYEBHuWBN_m80xuHQYWeafjv3SjrJPJWHgKO0hkWIU7vbUzR1H1up9hCzvJK9h74UO5iw';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }),
                  ),
                  Container(
                    height: _h * 0.1,
                    width: _w * 0.2,
                    child: IconButton(
                        icon: Image.asset("assets/facebook.png"),
                        onPressed: () async {
                          const url = 'https://www.facebook.com/zaryabalam35';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }),
                  ),
                  Container(
                    height: _h * 0.1,
                    width: _w * 0.2,
                    child: IconButton(
                        icon: Image.asset("assets/github.png"),
                        onPressed: () async {
                          const url = 'https://github.com/ZaryabAlam';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }),
                  ),
                  Container(
                    height: _h * 0.1,
                    width: _w * 0.2,
                    child: IconButton(
                        icon: Image.asset("assets/linkedin.png"),
                        onPressed: () async {
                          const url =
                              'https://www.linkedin.com/in/zaryab-alam-660b7a187/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }),
                  ),
                ],
              ),
              // SizedBox(
              //   height: _h * 0.15,
              // ),
///////////////////////////////////////////////////////////////////////

              // Column(
              //   children: [
              //     Text(
              //       "Delevoped by © Zaryab Alam",
              //       style: TextStyle(
              //           color: Colors.black54, fontWeight: FontWeight.w300),
              //     ),
              //     Text(
              //       "Made for MS-Global Inc with LOVE",
              //       style: TextStyle(
              //           color: Colors.black54, fontWeight: FontWeight.w300),
              //     ),
              //     Text(
              //       'Terms of Service | Privacy Policy',
              //       style: TextStyle(
              //           color: Colors.black54, fontWeight: FontWeight.w300),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
      drawer: SafeArea(
        child: Container(
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 125.0,
                  height: 125.0,
                  margin: const EdgeInsets.only(
                    top: 15.0,
                    bottom: 35.0,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/pic.png',
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.account_circle_rounded),
                  title: Text('Zaryab Alam'),
                ),
                ListTile(
                    onTap: () {},
                    leading: Icon(Icons.home_filled),
                    title: Text('Wash Inn')),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.favorite),
                  title: Text('Flutter SDK'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Extra()));
                  },
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
                Spacer(),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/qrcode.png"))),
                ),
                Column(
                  children: [
                    Text(
                      "Scan for more!",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white54,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 6.0,
                    ),
                    child: Column(
                      children: [
                        Text("All Rights Reserve 2022 © DevCat | Zaryab Alam"),
                        Text('Terms of Service | Privacy Policy'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
