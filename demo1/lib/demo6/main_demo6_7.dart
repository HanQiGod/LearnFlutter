import 'package:flutter/material.dart';

/**
 * 
 * Flutter ListView 基础列表组件、水平列表组件、图标组件
 * 
 * Flutter 提供了四种列表：
 *   1. 垂直列表（包括垂直图文列表）
 *   2. 水平列表
 *   3. 动态列表
 *   4. 矩阵式列表
 * 
 *  */


/**
 * 
 * 动态列表展示
 * 
 *  1. 使用for循环语句/使用 Map 语句
 * 
 *  2. 使用 ListView 提供的 ListView.builder 来实现
 * 
 */


// 使用循环语句实现动态列表

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FlutterDemo'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

// 用数组中的数据遍历到 ListView 上
class HomeContent extends StatelessWidget {

  // 自定义方法

  List<Widget> _getData() {

    List<Widget> list = new List();
    for(int i = 0; i < 20; i++) {
      list.add(
         ListTile(
          title: Text('我是$i个列表'),
        )
      );
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: this._getData(),
    );
  }
}
