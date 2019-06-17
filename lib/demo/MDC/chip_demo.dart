///Created by fuzhi on 2019-06-13

import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = [
    'Apple',
    'banana',
    'lemon',
  ];

  String _action = 'Nothing';

  List<String> _selected = [];

  String _choice = 'Nothing';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chip'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 8.0,
              // 行与行之间的间隔
              runSpacing: 8.0,
              children: <Widget>[
                Chip(
                  label: Text(
                    '月落乌啼霜满天',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Chip(
                  label: Text(
                    '江枫渔火对愁眠',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  backgroundColor: Colors.blue,
                ),
                Chip(
                  label: Text(
                    '停车坐爱枫林晚',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  backgroundColor: Colors.blue,
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('智'),
                  ),
                ),
                Chip(
                  label: Text(
                    '停车坐爱枫林晚',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  backgroundColor: Colors.blue,
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2882626737,2721711986&fm=27&gp=0.jpg',
                    ),
                  ),
                ),
                // 删除小按钮
                Chip(
                  label: Text(
                    'city',
                    style: TextStyle(fontSize: 18),
                  ),
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.red,
                  // 长按小图标出现的文字
                  deleteButtonTooltipMessage: 'delete',
                ),
                // ------------------------------------------------
                // 分割线
                Divider(
                  // 颜色-蓝色
                  color: Colors.blue,
                  // 离上边的高度
                  height: 32,
                  // 距离左边的缩进
                  indent: 22,
                ),
                Container(
                  width: double.infinity,
                  child: Text('Chip:'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((item) {
                    return Chip(
                      label: Text(item),
                      onDeleted: () {
                        setState(() {
                          _tags.remove(item);
                        });
                      },
                    );
                  }).toList(),
                ),
                // ------------------------------------------------
                Divider(
                  color: Colors.blue,
                  height: 32,
                  indent: 22,
                ),
                Container(
//                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
//                  child: Row(
//                    children: <Widget>[
//                      Text('Action: $_action'),
//                    ],
//                  ),
                  width: double.infinity,
                  child: Text('ActionChip: $_action'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((item) {
                    // 动作chip
                    return ActionChip(
                      label: Text(item),
                      onPressed: () {
                        setState(() {
                          _action = item;
                        });
                      },
                    );
                  }).toList(),
                ),
                // ------------------------------------------------
                Divider(
                  color: Colors.blue,
                  height: 32,
                  indent: 22,
                ),
                Container(
                  width: double.infinity,
                  child: Text('FilterChip: ${_selected.toString()}'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    // 动作chip
                    return FilterChip(
                      label: Text(tag),
                      selected: _selected.contains(tag),
                      onSelected: (bool) {
                        setState(() {
                          if(bool) {
                            _selected.add(tag);
                          } else {
                            _selected.remove(tag);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                // ------------------------------------------------
                Divider(
                  color: Colors.blue,
                  height: 32,
                  indent: 22,
                ),
                Container(
                  width: double.infinity,
                  child: Text('Choice: $_choice'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    // 动作chip
                    return ChoiceChip(
                      label: Text(tag),
                      selectedColor: Colors.red,
                      selected: tag == _choice,
                      onSelected: (bool){
                        setState(() {
                          if(bool) {
                            _choice = tag;
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
      // 点击恢复小按钮
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_page),
        onPressed: () {
          setState(() {
            _tags = [
              'Apple',
              'banana',
              'lemon',
            ];

            _selected = [];// FilterChip重置选中的button

            _choice = '';// ChoiceChip重置选中的button
          });
        },
      ),
    );
  }
}
