import 'package:demo1/demo13/pages/router/routers.dart';
import 'package:flutter/material.dart';


/**
 * 
 * Flutter 中的路由：路由替换、返回到跟路由
 * 
 * 
 * 
 *  */


//  命名路由以及命名路由传值
// 入口方法
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // 路由代码抽离
    return MaterialApp(
      // home: Taps(),
      initialRoute: '/',  // 初始化时加载的路由
      routes: routers,
    );
  }
}




