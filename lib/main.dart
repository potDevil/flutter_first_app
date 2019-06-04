import 'package:flutter/material.dart';
import 'demo/Favorite_demo.dart';
import 'demo/SliverDemo.dart';
import 'demo/basic_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/form_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/material_components.dart';
import 'demo/nihao_demo.dart';
import 'demo/view_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      home: Home(), // Scaffold
      // 设置初始路由
      initialRoute: '/mdc',
      routes: {
        '/': (context) => Home(),
        '/favorite': (context) => FavoriteDemo(title: 'favorite'),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow, // 主题颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        accentColor: Colors.white,
      ),
    ); // MaterialApp
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
//          leading: IconButton(
//            icon: Icon(Icons.menu),
//            tooltip: 'Navigation',
//            onPressed: () => debugPrint('Navigation button is pressed'),
//          ),
          title: TextView(),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'search',
              onPressed: () {
                // 跳转到sliver页面
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SliverDemo()),
                );
                debugPrint('Search button is Pressed');
              },
            ),
          ],
          elevation: 0,
          // 阴影
          bottom: TabBar(
            unselectedLabelColor: Colors.black45,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.5,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_activity)),
              Tab(icon: Icon(Icons.local_cafe)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.face)),
            ],
          ),
        ),
        // AppBar
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            ViewDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}

