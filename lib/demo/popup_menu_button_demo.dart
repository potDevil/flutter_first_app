///Created by fuzhi on 2019-06-04

import 'package:flutter/material.dart';

/// 菜单
class PopupMenuButtonDemo extends StatefulWidget {
  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {

  String _currentSelect = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('PopupMenuButtonDemo'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_currentSelect),
                PopupMenuButton(
                  onSelected: (value) {
                    print(value);
                    setState(() {
                      _currentSelect = value;
                    });
                  },
                  itemBuilder: (BuildContext context) => [
                        PopupMenuItem(
                          child: Text('home'),
                          value: 'home',
                        ),
                        PopupMenuItem(
                          child: Text('school'),
                          value: 'school',
                        ),
                        PopupMenuItem(
                          child: Text('hospital'),
                          value: 'hospital',
                        ),
                      ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
