///Created by fuzhi on 2019-05-29

import 'package:flutter/material.dart';
import 'Favorite_demo.dart';
import 'material_components.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'devil',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('hulk_devil@outlook.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559128985697&di=92886923089891f8e99bc78a5877c946&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201809%2F24%2F20180924180048_wfrar.thumb.700_0.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                // 装饰图像
                image: NetworkImage(
                    'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2882626737,2721711986&fm=27&gp=0.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.yellow[400].withOpacity(0.6), // 不透明度
                  BlendMode.colorBurn, // 混合效果
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Message',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
            // 标题后面添加图标
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return MaterialComponents();
                  }),
                ),
          ),
          ListTile(
            title: Text(
              'Favorite',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
            // 标题后面添加图标
            onTap: () => Navigator.pushNamed(context, '/favorite'),
          ),
          ListTile(
            title: Text(
              'Settings',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.settings,
                color: Colors.black12, size: 22.0), // 标题后面添加图标
          ),
        ],
      ),
    );
  }
}
