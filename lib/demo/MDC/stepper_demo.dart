///Created by fuzhi on 2019-06-16

import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stepper(
              currentStep: _currentStep,
              // 按下step执行的任务
              onStepTapped: (value) {
                setState(() {
                  _currentStep = value;
                });
              },
              onStepContinue: () {
                setState(() {
                  _currentStep >= 2 ? _currentStep = 0 : _currentStep += 1;
                });
              },
              onStepCancel: () {
                setState(() {
//                  _currentStep == 0 ? _currentStep = 2 : _currentStep -= 1;
                    if(_currentStep == 0) {
                      _currentStep = 2;
                    } else {
                      _currentStep = _currentStep  - 1;
                    }
                });
              },
              steps: [
                Step(
                  title: Text('猪猪云0'),
                  subtitle: Text('一只小猪0'),
                  content: Text('猪猪云是笨蛋0'),
                  // 是否显示为活动色
                  isActive: _currentStep == 0,
                ),
                Step(
                  title: Text('猪猪云1'),
                  subtitle: Text('一只小猪1'),
                  content: Text('猪猪云是笨蛋1'),
                  isActive: _currentStep == 1,
                ),
                Step(
                  title: Text('猪猪云2'),
                  subtitle: Text('一只小猪2'),
                  content: Text('猪猪云是笨蛋2'),
                  isActive: _currentStep == 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
