import 'package:flutter/material.dart';
import '../routes/application.dart';

class LoginPage extends StatelessWidget {
  void _login(BuildContext context) {
    print('login func');
    Application.router.navigateTo(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page'),
      ),
      body: Column(
        children: [
          TextField(
            autofocus: true,
            decoration: InputDecoration(
                labelText: "用户名",
                hintText: "请输入用户名或邮箱",
                prefixIcon: Icon(Icons.person)),
          ),
          TextField(
            autofocus: true,
            decoration: InputDecoration(
                labelText: "密码",
                hintText: "请输入密码",
                prefixIcon: Icon(Icons.lock)),
          ),
          RaisedButton(
              onPressed: () {
                _login(context);
              },
              child: Text('登录'))
        ],
      ),
    );
  }
}
