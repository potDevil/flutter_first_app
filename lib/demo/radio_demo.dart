///Created by fuzhi on 2019-06-04

import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGroupA = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('RadioDemoState'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('RadioListTile'),
            SizedBox(height: 32),
//            Container(height: 30),
            RadioListTile(
              value: 0,
              groupValue: _radioGroupA,
              onChanged: (value) {
                setState(() {
                  _radioGroupA = value;
                });
              },
              selected: _radioGroupA == 0,
              title: Text('Options A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.filter_1),
              activeColor: Colors.blue,
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioGroupA,
              onChanged: (value) {
                setState(() {
                  _radioGroupA = value;
                });
              },
              selected: _radioGroupA == 1,
              title: Text('Options B'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.filter_2),
              activeColor: Colors.blue,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Radio(
//                  value: 0,
//                  onChanged:(value) {
//                    setState(() {
//                      _radioGroupA = value;
//                    });
//                  },
//                  groupValue: _radioGroupA,
//                  activeColor: Colors.blue,
//                ),
//
//                Radio(
//                  value: 1,
//                  onChanged:(value) {
//                    setState(() {
//                      _radioGroupA = value;
//                    });
//                  },
//                  groupValue: _radioGroupA,
//                  activeColor: Colors.blue,
//                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
