///Created by fuzhi on 2019-06-05

import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _sliderItemA = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SliderDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Slider(
                  value: _sliderItemA,
                  onChanged: (value) {
                    setState(() {
                      _sliderItemA = value;
                    });
                  },
                  activeColor: Colors.blue,
                  inactiveColor: Colors.blue[800].withOpacity(0.3),
                  min: 0.0,
                  max: 10.0,
                  divisions: 10,
                  label: '$_sliderItemA',
                ),
                SizedBox(
                  height: 20,
                ),
                Text('SliderValue:10'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
