import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'home.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;

  runApp(MyApp(showHome: showHome));
}

class MyApp extends StatelessWidget {
  final bool showHome;
  const MyApp({
    Key key,
    this.showHome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: showHome ? Home() : Page1(),
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget buildPage({
    Color color,
    String urlImage,
    String title,
    Color colort,
    String subtitle,
  }) =>
      Container(
          color: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(urlImage), fit: BoxFit.contain)),
              ),
              const SizedBox(height: 64),
              Text(
                title,
                style: TextStyle(
                    color: colort, fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(subtitle))
            ],
          ));

  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    BottomSheetThemeData(backgroundColor: Colors.black54);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
//////////////////////// Screens ////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////

          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                isLastPage = index == 3;
              });
            },
            children: [
              buildPage(
                  color: Colors.white,
                  urlImage: 'assets/obs1.png',
                  title: "WASH it!",
                  colort: Colors.black,
                  subtitle:
                      'Wash your cloths with modern machines exclusively'),
              buildPage(
                  color: Color(0xFFd7fada),
                  urlImage: 'assets/obs2.png',
                  title: "REUSE",
                  colort: Colors.black,
                  subtitle:
                      'Reuse items as much as you can before replacing them.'),
              buildPage(
                  color: Color(0xFFd7fada),
                  urlImage: 'assets/obs3.png',
                  title: "RECYCLE",
                  colort: Colors.black,
                  subtitle: 'Recycle items wherever possible.'),
              buildPage(
                  color: Color(0xFF00964c),
                  urlImage: 'assets/wlogo1.png',
                  title: "Happy World",
                  colort: Colors.black,
                  subtitle: 'All these efforts for our Happier World.'),
            ],
          ),
        ),
/////////////////////////Bottom Sheet////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
        ///

        bottomSheet: isLastPage
            ? Stack(
                children: [
                  Container(
                      height: 80,
                      decoration: BoxDecoration(color: Color(0xFF00964c))),
                  TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80)),
                        primary: Colors.black,
                        backgroundColor: Colors.white,
                        minimumSize: Size.fromHeight(70)),
                    onPressed: () async {
                      final prefs = await SharedPreferences.getInstance();
                      prefs.setBool('showHome', true);

                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Text("Get Started", style: TextStyle(fontSize: 20)),
                  ),
                ],
              )
            : Stack(
                children: [
                  Container(
                      height: 80,
                      decoration: BoxDecoration(color: Colors.white)),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(80)),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () => controller.jumpToPage(3),
                            child:
                                Text("Skip", style: TextStyle(fontSize: 17))),
                        Center(
                          child: SmoothPageIndicator(
                            controller: controller,
                            count: 4,
                            effect: SwapEffect(activeDotColor: Colors.blue),
                            onDotClicked: (index) => controller.animateToPage(
                                index,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInOut),
                          ),
                        ),
                        TextButton(
                            onPressed: () => controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInOut),
                            child: Text("Next", style: TextStyle(fontSize: 17)))
                      ],
                    ),
                  ),
                ],
              ),
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
      ),
    );
  }
}
