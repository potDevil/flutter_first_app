///Created by fuzhi on 2019-05-29

import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(// 设置背景图
          image: NetworkImage(
              "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2147882337,1185102379&fm=27&gp=0.jpg"),
          alignment: Alignment.topCenter,
          repeat: ImageRepeat.repeatY,
          // 重复
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.red.withOpacity(0.5),// 滤镜颜色
              BlendMode.colorBurn),// 滤镜
        ),// 颜色过滤器
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white,
            ),
//            color: Color.fromRGBO(3, 53, 255, 1.0),
            padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
            margin: EdgeInsets.all(24),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 53, 255, 1.0),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3,
                style: BorderStyle.solid,
              ),
              // 设置四边框
//              borderRadius: BorderRadius.circular(12),// 圆角效果
              boxShadow: [
                // 设置阴影
                BoxShadow(
                  offset: Offset(6, 7), // x轴阴影偏移量，y轴阴影偏移量
                  color: Colors.red, // 阴影的颜色
                  blurRadius: 20, // 阴影模糊程度
                  spreadRadius: -9, // 阴影的扩散程度
                ),
              ],
              shape: BoxShape.circle,
              // 图像的形状
//              gradient: RadialGradient(
//                colors: [
//                  Colors.red,
//                  Colors.black
//                ],
//              ), // 放射渐变
              gradient: LinearGradient(
                colors: [Colors.red, Colors.black],
              ), // 线性渐变
            ),
          ),
        ],
      ),
    );
  }
}

class RichDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'devil',
        style: TextStyle(
          color: Colors.deepPurple, // 颜色
          fontSize: 25.0, // 字体大小
          fontStyle: FontStyle.italic, // 斜体
          fontWeight: FontWeight.w500, // 字体粗细
        ),
        children: [
          TextSpan(
            text: '.net',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  static String _author = '李白';

  static String _title = '将进酒';

  final line =
      '《 $_title 》—— $_author 。君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。岑夫子，丹丘生，将进酒，杯莫停。与君歌一曲，请君为我倾耳听。钟鼓馔玉不足贵，但愿长醉不复醒。古来圣贤皆寂寞，惟有饮者留其名。陈王昔时宴平乐，斗酒十千恣欢谑。主人何为言少钱，径须沽取对君酌。五花马，千金裘，呼儿将出换美酒，与尔同销万古愁。';

  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  @override
  Widget build(BuildContext context) {
    return Text(
      line,
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 13,
      overflow: TextOverflow.ellipsis,
    );
  }
}
