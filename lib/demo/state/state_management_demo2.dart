///Created by fuzhi on 2019-06-17

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class StateManagementDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: CounterModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('StateManagement'),
          elevation: 0.0,
        ),
        body: CounterWrapper(),
        floatingActionButton: ScopedModelDescendant<CounterModel>(
          rebuildOnChange: false,
          builder: (context, _, model) => FloatingActionButton(
                onPressed: model.increaseCount,
                child: Icon(Icons.print),
              ),
        ),
      ),
    );
  }
}

class CounterWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter(),
    );
  }
}

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterModel>(
      builder: (context, _, model) => ActionChip(
            label: Text(
              "${model._count}",
            ),
            onPressed: model.increaseCount,
          ),
    );
  }
}

// 使用ScopedModel 有效地传递数据给子部件
class CounterModel extends Model {
  int _count = 0;

  int get count => _count;

  void increaseCount() {
    _count += 1;
    notifyListeners();
  }
}
