import 'package:flutter/material.dart';
import 'package:task2/extra.dart';
import 'package:task2/package.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _advancedDrawerController = AdvancedDrawerController();
  final kInnerDecoration = BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.white),
    borderRadius: BorderRadius.circular(32),
  );

  final kGradientBoxDecoration = BoxDecoration(
    gradient: LinearGradient(colors: [Colors.cyan[300], Colors.blue[800]]),
    border: Border.all(
      color: Colors.transparent,
    ),
    borderRadius: BorderRadius.circular(32),
  );

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
      backdropColor: Colors.blue,
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
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Package()));
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: _h * 0.08,
                      width: _w * 0.85,
                      child: Center(child: Text("Get Started")),
                      decoration: kInnerDecoration,
                    ),
                  ),
                  height: 66.0,
                  decoration: kGradientBoxDecoration,
                ),
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
              MyOutlinedButton(
                onPressed: () {},
                gradient: LinearGradient(
                    colors: [Colors.cyan[500], Colors.blue[800]]),
                child: Text('OutlinedButton'),
              )
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

/////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
class MyOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final ButtonStyle style;
  final Gradient gradient;
  final double thickness;

  const MyOutlinedButton({
    Key key,
    this.onPressed,
    this.child,
    this.style,
    this.gradient,
    this.thickness = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;
    return DecoratedBox(
      decoration: BoxDecoration(gradient: gradient),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        height: _h * 0.08,
        width: _w * 0.85,
        // color: Colors.white,
        margin: EdgeInsets.all(thickness),
        child: OutlinedButton(
          onPressed: onPressed,
          style: style,
          child: child,
        ),
      ),
    );
  }
}
