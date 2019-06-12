///Created by fuzhi on 2019-05-30

import 'package:flutter/material.dart';
import 'package:flutter_app/model/Post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: _gridItemBuilder,
      itemCount: posts.length,
      padding: EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        crossAxisCount: 3,
      ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int indext) {
      return Container(
        color: Colors.blue[300],
        alignment: Alignment(0, 0),
        child: Text(
          'Item $indext',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      // 网格视图在交叉轴上最大的尺寸
      maxCrossAxisExtent: 100,
      // 上下网格的间距
      mainAxisSpacing: 2,
      // 左右网格的间距
      crossAxisSpacing: 2,
      // 网格方向,默认vertical
      scrollDirection: Axis.vertical,
      // 设置个数
      children: _buildTiles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int indext) {
      return Container(
        color: Colors.blue[300],
        alignment: Alignment(0, 0),
        child: Text(
          'Item $indext',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // 每vertical/horizontal排3个
      crossAxisCount: 3,
      // 上下网格的间距
      mainAxisSpacing: 2,
      // 左右网格的间距
      crossAxisSpacing: 2,
      // 网格方向,默认vertical
      scrollDirection: Axis.vertical,
      // 设置个数
      children: _buildTiles(100),
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].author,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].title,
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: posts.length,
//      itemBuilder: _pageItemBuilder,
        itemBuilder: (context, index) {
          return _pageItemBuilder(context, index);
        });
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      onPageChanged: (currentPage) {
        print("$currentPage");
      },
      // 页面控制器
      controller: PageController(
        initialPage: 0, // 初始化时显示哪个页面，默认index = 0(第一个页面)
        keepPage: false, // 记录页面滚动到哪一页(没测试出来，可能理解错了)
        viewportFraction: 0.8, // 占屏幕比，默认1.0
      ),
      scrollDirection: Axis.vertical, // 竖直滑动
//    reverse: true,// 反向排列
//    pageSnapping: false,//滑到一半时自动滑动到下一页
      children: <Widget>[
        Container(
          color: Colors.brown[400],
          alignment: Alignment(0, 0),
          child: Text(
            "First",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
        ),
        Container(
          color: Colors.blue[400],
          alignment: Alignment(0, 0),
          child: Text(
            "Second",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
        ),
        Container(
          color: Colors.green[400],
          alignment: Alignment(0, 0),
          child: Text(
            "Third",
            style: TextStyle(fontSize: 25, color: Colors.amberAccent),
          ),
        ),
      ],
    );
  }
}
