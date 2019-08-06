import 'package:demo1/demo13/pages/router/routers.dart';
import 'package:flutter/material.dart';


/**
 * 
 * Flutter 中常见的按钮组件以及自定义按钮组件：
 * 
 * 1. RaisedButton 凸起按钮组件
 * 
 * 2. FlatButton 扁平按钮组件
 * 
 * 3. OutlineButton 边框按钮组件
 * 
 * 4. IconButton 图标按钮组件
 * 
 * 5. ButtonBar 按钮组组件
 * 
 * 6. FloatingActionButton 浮动按钮组件
 * 
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
      initialRoute: '/buttonDemo',  // 初始化时加载的路由
      routes: routers,
    );
  }
}




