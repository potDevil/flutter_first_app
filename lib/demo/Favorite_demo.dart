///Created by fuzhi on 2019-06-03

import 'package:flutter/material.dart';

class FavoriteDemo extends StatelessWidget {
  final String title;

  FavoriteDemo({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
