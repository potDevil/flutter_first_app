///Created by fuzhi on 2019-06-04

import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _checkboxItemA = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('CheckboxDemo'),
        elevation: 12,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              onChanged: (value) {
                setState(() {
                  _checkboxItemA = value;
                });
              },
              value: _checkboxItemA,
              title: Text('CheckboxItemA'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.bookmark),
              selected: _checkboxItemA,
              activeColor: Colors.blue,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Checkbox(
//                  onChanged: (value) {
//                    setState(() {
//                      _checkboxItemA = value;
//                    });
//                  },
//                  value: _checkboxItemA,
//                  activeColor: Colors.black,
//                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

