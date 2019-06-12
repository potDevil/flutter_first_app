///Created by fuzhi on 2019-06-11

import 'package:flutter/material.dart';

enum actions {
  Cancel,
  Ok,
}

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = 'Nothing';

  Future _openAlertDialog() async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog'),
          content: Text('Are you sure about this?'),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.pop(context, actions.Cancel);
              },
            ),
            FlatButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.pop(context, actions.Ok);
              },
            ),
          ],
        );
      },
    );

    switch (action) {
      case actions.Cancel :
        setState(() {
          _choice = 'Cancel';
        });
        break;
      case actions.Ok:
        setState(() {
          _choice = 'Ok';
        });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Your choice is $_choice'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: _openAlertDialog,
                  child: Text('Open AlertDialog'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
