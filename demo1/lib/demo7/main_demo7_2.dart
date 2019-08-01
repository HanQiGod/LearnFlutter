import 'package:flutter/material.dart';

/**
 * 
 * Flutter GridView 组件以及动态 GridView
 * 
 * GridView 组件实现列表的布局(网格布局，类似商品列表)
 * 
 * 创建网格布局的方式：
 * 
 *  1. 通过 GridView.count 实现网格布局
 * 
 *  2. 通过 GridView.builder 实现网格布局（类似 ListView.builder 实现动态网格）
 * 
 *  */


//  通过 GridView.count 实现网格布局

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

class HomeContent extends StatelessWidget {
  // 自定义方法
  List<Widget> _getData() {
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          '这是第$i条数据',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        color: Colors.red,
        // height: 400,  // 设置高度没有反应
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(

      crossAxisCount: 2, // 设置一行 Widget 的数量

      padding: EdgeInsets.all(10),
      mainAxisSpacing: 10, // 设置 item 上下的距离
      crossAxisSpacing: 10, // 设置 item 左右的距离
      childAspectRatio: 0.7, // 设置 item 宽高的比例

      children: this._getData(),
    );
  }
}
