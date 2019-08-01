import 'package:flutter/material.dart';


/**
 * Image 组件加载网络图片
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
        child: Image.network(  // Image 加载网络图片
          'https://pics0.baidu.com/feed/2fdda3cc7cd98d10ec20bd74cca7a40b7aec9019.jpeg?token=4c42779191fdc6405349e717b312e196&s=ACC2854ECC41345F1979D8180300C0D2', // https://www.jkslw.cn/group1/M00/00/55/wKgVolzTzhKAE1BDAAKEkErpijE502.jpg

          // alignment: Alignment.topLeft, // 配置图片的显示位置

          // color: Colors.blue,
          // colorBlendMode: BlendMode.screen,

          // fit: BoxFit.cover, // 设置图片的充满容器，不变形
          // fit: BoxFit.fill,  // 铺满整个屏幕，被拉伸

          repeat: ImageRepeat.repeatY, // y轴的平铺


        ),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow
        ),
      ),
    );
  }
}
