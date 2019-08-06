import 'package:demo1/demo13/pages/router/routers.dart';
import 'package:flutter/material.dart';


/**
 * 
 * Flutter AppBar 自定义顶部导航栏按钮、图标、颜色以及 TabBar 定义顶部 Tab 切换
 * 
 * 实现顶部 Tab 切换，方法一：
 *  */


// 入口方法
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // 路由代码抽离
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 去掉 debug 图标
      // home: Taps(),
      initialRoute: '/appbarDemo',  // 初始化时加载的路由
      routes: routers,
    );
  }
}




