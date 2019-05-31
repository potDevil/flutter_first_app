///Created by fuzhi on 2019-05-29

import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "hello",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.black), // TextStyle
      ), // Text
    ); // Center
  }
}