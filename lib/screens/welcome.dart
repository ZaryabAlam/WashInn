import 'package:flutter/material.dart';
import 'package:task2/screens/package.dart';

class Welcome extends StatelessWidget {
  String name, phone, age, gender;
  Welcome({this.name, this.phone, this.age, this.gender});

  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.cyan[300], Colors.blue[800]])),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text('Name',
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontWeight: FontWeight.bold)),
                        subtitle: Text("${name}"),
                        trailing: Icon(
                          Icons.supervised_user_circle_rounded,
                          size: 40,
                          color: Colors.blue[800],
                        ),
                      ),
                      Divider(),
                      ListTile(
                        title: Text('Phone',
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontWeight: FontWeight.bold)),
                        subtitle: Text("${phone}"),
                        trailing: Icon(
                          Icons.phone_android_rounded,
                          size: 40,
                          color: Colors.blue[800],
                        ),
                      ),
                      Divider(),
                      ListTile(
                        title: Text('Age',
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontWeight: FontWeight.bold)),
                        subtitle: Text("${age}"),
                        trailing: Icon(
                          Icons.date_range_rounded,
                          size: 40,
                          color: Colors.blue[800],
                        ),
                      ),
                      Divider(),
                      ListTile(
                        title: Text('Gender',
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontWeight: FontWeight.bold)),
                        subtitle: Text("${gender}"),
                        trailing: Icon(
                          Icons.group_rounded,
                          size: 40,
                          color: Colors.blue[800],
                        ),
                      ),
                      Divider(),
                    ]),
              ),
            )
          ],
        ),

//         child: Column(

//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [

//             Text('Name: ${name}'),
//             Text('Phone: ${phone}'),
//             Text('Age: ${age}'),
//             Text('Gender: ${gender}'),
//             ///////////////////////////////////////////////////////////////////////////////////
//           SizedBox(
//             height: _h * 0.05,
//           ),
// //////////////////////////////////////////////////////////////////////////////////

//           Container(
//               height: _h * 0.08,
//               width: _w * 0.85,
//               decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.3),
//                       spreadRadius: 5,
//                       blurRadius: 7,
//                       offset: Offset(0, 7),
//                     )
//                   ],
//                   borderRadius: BorderRadius.circular(20),
//                   gradient: LinearGradient(
//                       colors: [Colors.cyan[300], Colors.blue[800]])),
//               child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       primary: Colors.transparent,
//                       shadowColor: Colors.transparent),
//                   onPressed: () {
//                     // if (_formKey.currentState.validate()) {
//                     //   _formKey.currentState.save();
//                     // } else
//                     Navigator.of(context).push(MaterialPageRoute(
//                         builder: (context) => Package(
//                             )));
//                   },
//                   child: Text(
//                     "Select Package",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   )))
//           ],

//         ),
      ),
    );
  }
}
