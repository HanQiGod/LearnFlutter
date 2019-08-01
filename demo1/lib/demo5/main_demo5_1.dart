import 'package:flutter/material.dart';


/**
 * Image 组件加载本地图片
 * 
 */



// 入口方法
void main() => runApp(MyApp());


// 自定义组件
class MyApp extends StatelessWidget {

  // Widget 是部件或组件，在 Flutter 中所有的东西都是组件,比如 Center、Text 都是 Widget
  @override
  Widget build(BuildContext context) {
    // MaterialApp 组件是作为根组件来使用的
    // Scaffold 组件修饰，可设置导航栏
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}


// 继续分离 Center 组件
class HomeContent extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

        child: Image.asset(
          'images/a.png',
          // fit: BoxFit.cover,
        ),

        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
      )
    );
  }
}
