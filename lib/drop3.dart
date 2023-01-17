import 'package:flutter/material.dart';
import 'package:dropdown_plus/dropdown_plus.dart';

class Drop3 extends StatefulWidget {
  @override
  State<Drop3> createState() => _Drop3State();
}

class _Drop3State extends State<Drop3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextDropdownFormField(
        options: ["Male", "Female"],
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            suffixIcon: Icon(Icons.arrow_drop_down),
            labelText: "Gender"),
        dropdownHeight: 120,
      ),
    );
  }
}
