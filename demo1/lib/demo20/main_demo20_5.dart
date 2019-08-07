import 'package:demo1/demo13/pages/router/routers.dart';
import 'package:flutter/material.dart';


/**
 * 
 * Flutter 中的表单
 * 
 * 1. TextField 组件（单行、多行、密码框等文本框）
 * 
 * 2. CheckBox 多选按钮组
 * 
 * 3. Radio 单选按钮组
 * 
 * 4. Switch 开关组件
 * 
 * 5. CheckBoxListTile
 * 
 * 6. RadioListTile
 * 
 * 7. SwitchListTile
 * 
 * 8. Slide
 * 
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
      initialRoute: '/formDemo',  // 初始化时加载的路由
      routes: routers,
    );
  }
}



