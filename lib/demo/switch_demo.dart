///Created by fuzhi on 2019-06-04

import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchItemA = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwitchListTile(
              onChanged: (value) {
                setState(() {
                  _switchItemA = value;
                });
              },
              value: _switchItemA,
              activeColor: Colors.blue,
              title: Text('switchItemA'),
              subtitle: Text('Description'),
              secondary: Icon(
                _switchItemA ? Icons.visibility : Icons.visibility_off,
              ),
              selected: _switchItemA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Text(
//                  _switchItemA ? '\u2665' : '\u{1f47b}',
//                  style: TextStyle(fontSize: 32),
//                ),
//                Switch(
//                  value: _switchItemA,
//                  onChanged: (value) {
//                    setState(() {
//                      _switchItemA = value;
//                    });
//                  },
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
