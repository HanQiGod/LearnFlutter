import 'package:demo1/demo13/pages/tabs.dart';
import 'package:flutter/material.dart';


/**
 * 
 * Flutter BottomNavigationBar 自定义底部导航栏以及实现页面切换
 * 
 * BottomNavigationBar 是底部导航条，可以让我们定义底部 Tab 切换，bottomNavigationBar 是 Scaffold 组件的参数。
 * 
 *  */


//  
// 入口方法
// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // MaterialApp 组件是作为根组件来使用的   
    // Scaffold 组件修饰，可设置导航栏
    return Taps();
  }
}




