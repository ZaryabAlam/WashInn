import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  String name, phone, age, gender;
  Welcome({this.name, this.phone, this.age, this.gender});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${name}'),
            Text('Phone: ${phone}'),
            Text('Age: ${age}'),
            Text('Gender: ${gender}'),
          ],
        ),
      ),
    );
  }
}
