import 'package:demo1/demo13/pages/router/routers.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart'; // 引入国际化的库


/**
 * 
 * Flutter 官方自带日期组件和第三方日期组件
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

      // 配置语言的代码
      localizationsDelegates: [
        //此处
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        //此处
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],

      debugShowCheckedModeBanner: false, // 去掉 debug 图标
      // home: Taps(),
      initialRoute: '/datePicker',  // 初始化时加载的路由
      routes: routers,
    );
  }
}



