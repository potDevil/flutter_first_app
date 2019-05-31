///Created by fuzhi on 2019-05-29

import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // row:横向，column:竖向
        mainAxisAlignment: MainAxisAlignment.center,
        // 主轴队列分配
//        crossAxisAlignment: CrossAxisAlignment.stretch,
        // 交叉轴队列分配
        children: <Widget>[
          ConstrainedBoxDemo(),
        ], // <Widget>[]
      ), // Column
    ); // Container
  }
}

///约束小部件
class ConstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 200,
        minHeight: 200,
      ),
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

/// 宽高比小部件
class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      // 设置宽高比
      aspectRatio: 3 / 2, // 得到的是3比2的容器
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

/// 一摞小部件
class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // 一摞小部件
      alignment: Alignment.topLeft,
      children: <Widget>[
        SizedBox(
          child: Container(
            alignment: Alignment(-1, 0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
            width: 220,
            height: 330,
          ),
        ),
//              SizedBox(
//                height: 32,
//              ),
        SizedBox(
          child: Container(
            child: Icon(
              Icons.brightness_2,
              color: Colors.white,
              size: 32.0,
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
//                    borderRadius: BorderRadius.circular(8.0),
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 54, 255, 1.0)
                ],
              ),
            ),
            width: 100,
            height: 100,
          ),
        ),
        Positioned(
          right: 20,
          top: 20,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 15.0,
          ),
        ),
        Positioned(
          right: 40,
          top: 270,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 15.0,
          ),
        ),
        Positioned(
          right: 60,
          top: 80,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 15.0,
          ),
        ),
        Positioned(
          right: 4,
          top: 50,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 15.0,
          ),
        ),
        Positioned(
          right: 80,
          top: 250,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 15.0,
          ),
        ),
        Positioned(
          right: 40,
          top: 150,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 15.0,
          ),
        ),
        Positioned(
          right: 4,
          bottom: -4,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 15.0,
          ),
        ),
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(
    this.icon, {
    this.size = 32,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 52, 255, 1.0),
    );
  }
}
