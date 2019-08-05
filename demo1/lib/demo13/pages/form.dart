import 'package:flutter/material.dart';


class FormPage extends StatelessWidget {

  // 普通路由传值接收传入的值
  // String title;
  // FormPage({this.title = '表单'});

  @override
  Widget build(BuildContext context) {

    // 命名路由传值接收传入的值
    var args = ModalRoute.of(context).settings.arguments;
    print(args);

    return Scaffold(
      floatingActionButton: FloatingActionButton( // 浮动按钮
        child: Text('返回'),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        // 普通路由设置值
        // title: Text(this.title),

        // 命名路由设置值
        title: Text('分类：' + (args as Map)['name'] + ' 分类：id = ${(args as Map)['id']}'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('表单数据'),
          ),
          ListTile(
            title: Text('表单数据'),
          ),
          ListTile(
            title: Text('表单数据'),
          ),
          ListTile(
            title: Text('表单数据'),
          )
        ],
      ),
    );
  }
}