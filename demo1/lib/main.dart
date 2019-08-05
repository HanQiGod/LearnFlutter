import 'package:demo1/res/Routers.dart';
import 'package:flutter/material.dart';

import 'res/catalogData.dart';

/**
 * 
 * Flutter 学习笔记目录
 * 
 * 根视图文件
 * 
 *  */

// 入口方法
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // MaterialApp 组件是作为根组件来使用的   
    // Scaffold 组件修饰，可设置导航栏
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter 学习笔记目录'),
        ),
        body: HomeContent(),
      ),
      //注册路由表
      routes: mainRouters,
    );
  }
}

//  自定义组件
class HomeContent extends StatelessWidget {
  // 自定义方法
  Widget _getListData(context, index) { 
    return ListTile(
      title: Text(catalogListData[index]['title']),
      onTap: () {
        // item 点击事件 ,并传值
        Navigator.pushNamed(context, 'nextMain', arguments: catalogListData[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: catalogListData.length,
      itemBuilder: this._getListData,
    );
  }
}
