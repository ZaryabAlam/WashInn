import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:time_range/time_range.dart';
import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'last.dart';

class Reserve extends StatefulWidget {
  @override
  State<Reserve> createState() => _ReserveState();
}

class _ReserveState extends State<Reserve> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _isBackPressedOrTouchedOutSide = false,
      _isDropDownOpened = false,
      _isPanDown = false;
  List<String> _list;
  String _selectedItem = '';
  DatePickerController _controller = DatePickerController();
  DateTime _selectedValue = DateTime.now();
  static const orange = Colors.white;
  static const dark = Colors.black87;
  static const double leftPadding = 14;
  final _defaultTimeRange = TimeRangeResult(
    TimeOfDay(hour: 00, minute: 00),
    TimeOfDay(hour: 00, minute: 30),
  );
  TimeRangeResult _timeRange;
  @override
  void initState() {
    super.initState();
    _list = ["Every 3rd day", "Every week", "Twice a month", "Every month"];
    _selectedItem = 'Select Item';
    super.initState();
  }

  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;
    void initState() {
      super.initState();
      _timeRange = _defaultTimeRange;
    }

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.replay),
          onPressed: () {
            _controller.animateToSelection();
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
            "Pickup Date",
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
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Pickup Day',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontWeight: FontWeight.bold, color: dark),
                  ),
                ],
              ),
            ),
//////////////////////////////////////////////////////////////////////
            SizedBox(
              height: 10,
            ),
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              // color: Colors.cyan[100],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: DatePicker(
                      DateTime.now(),
                      width: 60,
                      height: 80,
                      controller: _controller,
                      initialSelectedDate: DateTime.now(),
                      selectionColor: Colors.black87,
                      selectedTextColor: Colors.white,
                      inactiveDates: [
                        DateTime.now().add(Duration(days: 7)),
                      ],
                      onDateChange: (date) {
                        // New date selected
                        setState(() {
                          _selectedValue = date;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
//////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
            SizedBox(
              height: 10,
            ),
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: leftPadding),
                    child: Text(
                      'Time Slot',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold, color: dark),
                    ),
                  ),
                  SizedBox(height: 20),
                  TimeRange(
                    fromTitle: Text(
                      'FROM',
                      style: TextStyle(
                        fontSize: 14,
                        color: dark,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    toTitle: Text(
                      'TO',
                      style: TextStyle(
                        fontSize: 14,
                        color: dark,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    titlePadding: leftPadding,
                    textStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: dark,
                    ),
                    activeTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: orange,
                    ),
                    borderColor: dark,
                    activeBorderColor: dark,
                    backgroundColor: Colors.transparent,
                    activeBackgroundColor: dark,
                    firstTime: TimeOfDay(hour: 8, minute: 00),
                    lastTime: TimeOfDay(hour: 20, minute: 00),
                    initialRange: _timeRange,
                    timeStep: 10,
                    timeBlock: 30,
                    onRangeCompleted: (range) =>
                        setState(() => _timeRange = range),
                  ),
                  SizedBox(height: 10),
                  if (_timeRange != null)
                    Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Selected Range: ${_timeRange.start.hhmm()} - ${_timeRange.end.hhmm()}',
                            style: TextStyle(fontSize: 13, color: dark),
                          ),
                          SizedBox(height: 10),
                          MaterialButton(
                            child: Text('Clear'),
                            onPressed: () =>
                                setState(() => _timeRange = _defaultTimeRange),
                            color: orange,
                          )
                        ],
                      ),
                    ),
                ],
              ),
            ),
/////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
            SizedBox(
              height: 10,
            ),
//////////////////////////////////////////////////////////////////////
            Card(
              elevation: 7,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              shadowColor: Colors.black87,
              color: Colors.white,
              child: Container(
                height: _h * 0.08,
                width: _w * 0.85,
                child: Center(
                  child: ListTile(
                    leading: Text(
                      "Repeat Pickup",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    //subtitle: Text(entries2[index], style: TextStyle(fontSize: 15)),
                    trailing: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Colors.cyan[100],
                      activeColor: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
///////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
            SizedBox(
              height: 10,
            ),
//////////////////////////////////////////////////////////////////////
            ///
            Container(
              height: _h * 0.09,
              width: _w * 0.90,
              child: AwesomeDropDown(
                isPanDown: _isPanDown,
                dropDownList: _list,
                dropDownIcon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey,
                  size: 30,
                ),
                selectedItem: _selectedItem,
                onDropDownItemClick: (selectedItem) {
                  _selectedItem = selectedItem;
                },
                dropStateChanged: (isOpened) {
                  _isDropDownOpened = isOpened;
                  if (!isOpened) {
                    _isBackPressedOrTouchedOutSide = false;
                  }
                },
              ),
            ),
//////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
            SizedBox(
              height: 30,
            ),
//////////////////////////////////////////////////////////////////////
            ///
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
                              MaterialPageRoute(builder: (context) => Last()));
                        },
                        child: Text(
                          "Confirm",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))))
          ]),
        ));
  }
}
