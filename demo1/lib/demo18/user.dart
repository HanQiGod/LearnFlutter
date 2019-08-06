import 'package:flutter/material.dart';


class UserPage extends StatelessWidget {
  const UserPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('用户中心'),
      ),
      body: Text('你好'),
    );
  }
}