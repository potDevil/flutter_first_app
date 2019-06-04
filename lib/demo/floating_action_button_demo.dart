///Created by fuzhi on 2019-06-04

import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.add,
        color: Color(0xFFFFFFFF),
      ),
      elevation: 3,
      backgroundColor: Colors.black87,
      // 外形改为矩形
//      shape: BeveledRectangleBorder(
//        borderRadius: BorderRadius.circular(10),
//      ),
    );

    final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: () {},
      backgroundColor: Colors.blue,
      icon: Icon(
        Icons.add,
        color: Color(0xFFFFFFFF),
      ),
      label: Text(
        'Add',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 20,
      ),
      floatingActionButton: _floatingActionButton,
      // 设置FloatingButton的位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // 添加一个80高度的底部工具栏
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Container(
          height: 80,
        ),
//        圆形有缺口的矩形
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}
