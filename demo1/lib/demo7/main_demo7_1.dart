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


// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // 获取路由参数  
    var args = ModalRoute.of(context).settings.arguments;

    // MaterialApp 组件是作为根组件来使用的
    // Scaffold 组件修饰，可设置导航栏
    return Scaffold(
        appBar: AppBar(
          title: Text(args),
        ),
        body: HomeContent(),
      );
  }
}


class HomeContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(

      crossAxisCount: 3,  // 设置一行 Widget 的数量

      children: <Widget>[

        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),

      ],
    );
  }
}
