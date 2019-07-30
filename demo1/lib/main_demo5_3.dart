import 'package:flutter/material.dart';


/**
 * 
 * 实现圆角以及圆形图片，方法二 (推荐使用)
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
        // ClipOval 组件将内部容器剪切成圆形
        child: ClipOval(
          child: Image.network(
            'https://pics0.baidu.com/feed/2fdda3cc7cd98d10ec20bd74cca7a40b7aec9019.jpeg?token=4c42779191fdc6405349e717b312e196&s=ACC2854ECC41345F1979D8180300C0D2',

            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
      )
    );
  }
}
