///Created by fuzhi on 2019-06-12

import 'package:flutter/material.dart';

class ExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;

  ExpansionPanelItem({this.headerText, this.body, this.isExpanded});
}

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  List<ExpansionPanelItem> _expansionPanelItem;

  @override
  void initState() {
    super.initState();
    _expansionPanelItem = <ExpansionPanelItem>[
      ExpansionPanelItem(
        headerText: 'Panel A',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for Panel A'),
        ),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        headerText: 'Panel B',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for Panel B'),
        ),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        headerText: 'Panel C',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for Panel C'),
        ),
        isExpanded: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanel'),
        elevation: 20,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (index, isExpanded) {
                setState(() {
                  _expansionPanelItem[index].isExpanded = !isExpanded;
                });
              },
              // TODO List.map().toList() 不懂什么意思 flutter从入门到精通-12章对话框-12小节ExpansionPanel:面板列表项目
              children: _expansionPanelItem.map(
                (ExpansionPanelItem item) {
                  return ExpansionPanel(
                    isExpanded: item.isExpanded,
                    body: item.body,
                    headerBuilder: (context, isExpanded) {
                      return Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          item.headerText,
                          style: Theme.of(context).textTheme.title,
                        ),
                      );
                    },
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
