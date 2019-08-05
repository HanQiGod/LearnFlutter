import 'package:flutter/material.dart';


class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(

      children: <Widget>[

        ListTile(
          title: Text('订单管理'),
        ),
        ListTile(
          title: Text('我的收藏'),
        ),
        ListTile(
          title: Text('我的优惠券'),
        ),

        RaisedButton(
          child: Text('跳转到登录页面'),
          onPressed: (){
            Navigator.pushNamed(context, '/login');
          },
        ),
        RaisedButton(
          child: Text('跳转到注册页面'),
          onPressed: (){
            Navigator.pushNamed(context, '/registerFirst');
          },
        )
      ],
    );
  }
}