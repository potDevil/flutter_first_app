///Created by fuzhi on 2019-06-04

import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 平的button
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('flatButton'),
          onPressed: () {},
          // 溅墨效果
          splashColor: Colors.grey,
          textColor: Colors.blue,
        ),
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('flatButton'),
          // 溅墨效果
          splashColor: Colors.grey,
          textColor: Colors.blue,
        )
      ],
    );

    // 上升的button
    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // 配置主题
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // 体育场边距
              shape: StadiumBorder(),
            ),
          ),
          child: RaisedButton(
            child: Text('raisedButton'),
            onPressed: () {},
            // 溅墨效果
            splashColor: Colors.grey,
            textColor: Colors.blue,
          ),
        ),
        SizedBox(
          width: 12,
        ),
        RaisedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('raisedButton'),
          // 溅墨效果
          splashColor: Colors.grey,
          textColor: Colors.blue,
          // 设置高度
          elevation: 12,
          // 按钮颜色
          color: Colors.white,
        )
      ],
    );

    // 描边的button
    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // 配置主题
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // 体育场边距
              shape: StadiumBorder(),
            ),
          ),
          child: OutlineButton(
            // 设置描边
            borderSide: BorderSide(color: Colors.black),
            child: Text('outlineButton'),
            onPressed: () {},
            // 溅墨效果
            splashColor: Colors.grey[200],
            textColor: Colors.black,
          ),
        ),
        SizedBox(
          width: 12,
        ),
        OutlineButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('outlineButton'),
          // 溅墨效果
          splashColor: Colors.grey,
          textColor: Colors.blue,
          // 按钮颜色
          color: Colors.white,
        )
      ],
    );

    // 修改宽度的button
    final Widget fixedWidthButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 170,
          child: OutlineButton(
            // 设置描边
            borderSide: BorderSide(color: Colors.black),
            child: Text('fixedWidthButton'),
            onPressed: () {},
            // 溅墨效果
            splashColor: Colors.grey[200],
            textColor: Colors.black,
          ),
        ),
      ],
    );

    // 等分的button
    final Widget expandedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: OutlineButton(
            // 设置描边
            borderSide: BorderSide(color: Colors.black),
            child: Text('expandedButton'),
            onPressed: () {},
            // 溅墨效果
            splashColor: Colors.grey[200],
            textColor: Colors.black,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          flex: 2,
          child: OutlineButton(
            // 设置描边
            borderSide: BorderSide(color: Colors.black),
            child: Text('expandedButton'),
            onPressed: () {},
            // 溅墨效果
            splashColor: Colors.grey[200],
            textColor: Colors.black,
          ),
        ),
      ],
    );

    // 一组带边距的横排显示按钮
    final Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(horizontal: 32),
            ),
          ),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton(
                // 设置描边
                borderSide: BorderSide(color: Colors.black),
                child: Text('Button'),
                onPressed: () {},
                // 溅墨效果
                splashColor: Colors.grey[200],
                textColor: Colors.black,
              ),
              OutlineButton(
                // 设置描边
                borderSide: BorderSide(color: Colors.black),
                child: Text('Button'),
                onPressed: () {},
                // 溅墨效果
                splashColor: Colors.grey[200],
                textColor: Colors.black,
              ),
            ],
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ButtonDemo'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            outlineButtonDemo,
            fixedWidthButtonDemo,
            expandedButtonDemo,
            buttonBarDemo,
          ],
        ),
      ),
    );
  }
}