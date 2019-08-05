import 'package:demo1/demo13/pages/tabs.dart';
import 'package:flutter/material.dart';


/**
 * 
 * Flutter 中的普通路由、普通的路由传值、命名路由、命名路由传值
 * 
 * 路由：通俗的将就是页面跳转。
 * 
 * 在 Flutter 中通过 Navigator 组件管理路有导航，并提供了管理堆栈的方法。比如 Navigator.push 和 Navigator.pop
 * 
 * Flutter 提供配置路由的两种方式：
 *    
 *    1. 普通路由
 * 
 *    2. 命名路由
 * 
 *  */


//  普通路由以及普通路由传值
// 入口方法
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // MaterialApp 组件是作为根组件来使用的   
    // Scaffold 组件修饰，可设置导航栏
    return MaterialApp(
      home: Taps(),
    );
  }
}




