///Created by fuzhi on 2019-06-03

import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('FormDemo'),
        elevation: 12,
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final key = GlobalKey<FormState>();
  String username, password;

  // 表单字段的自动验证功能初始为false
  bool autovalidate = false;

  String validateUsername(String value) {
    if (value.isEmpty) {
      return 'username is required';
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.isEmpty) {
      return 'password is required';
    }
    return null;
  }

  void submitRegisterForm() {
    if (key.currentState.validate()) {
      key.currentState.save();
      debugPrint('username: $username');
      debugPrint('password: $password');

      // 弹出提示栏
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text("Registering...."),
        ),
      );
    } else {
      setState(() {
        // 打开表单字段的自动验证功能
        autovalidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: this.key,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'username',
              helperText: '',
            ),
            onSaved: (value) {
              username = value;
            },
            // 验证输入信息
            validator: validateUsername,
            // 表单字段输入信息自动验证功能
            autovalidate: autovalidate,
          ),
          TextFormField(
            // 密码输入变成***
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'password',
              helperText: '',
            ),
            onSaved: (value) {
              password = value;
            },
            validator: validatePassword,
            autovalidate: autovalidate,
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              onPressed: submitRegisterForm,
              color: Colors.blue[400],
              child: Text(
                'register',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    textEditingController.addListener(() {
      print('Listener: ${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      // 键盘输入改变后的监听
//      onChanged: ((value) {
//        print("changed:" + "$value");
//      }),
      // 按下确定键回调的内容(不是回车)
      onSubmitted: ((value) {
        print("submitted:" + "$value");
      }),
      decoration: InputDecoration(
        // 文本框设置icon
        icon: Icon(Icons.subject),
        // 文本框设置标签
        labelText: 'Title',
        // 文本框设置title
        hintText: 'Enter the post title',
        // 文本框设置边境
        border: OutlineInputBorder(),
        // 文本框设置背景颜色
        filled: true,
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
