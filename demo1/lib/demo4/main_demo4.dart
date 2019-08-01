import 'package:flutter/material.dart';

// 入口方法
void main() {
  runApp(MyApp());
}

// 自定义组件 -- 抽离
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter demo'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

// 继续抽离组件

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Container 容器组件 -- 相当于iOS的 UIView
    return Center(
      child: Container(
        child: Text(
          '我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本',
          textAlign: TextAlign.right,
          overflow: TextOverflow.ellipsis,
          // overflow: TextOverflow.fade,
          maxLines: 2,
          textScaleFactor: 2.0, // 设置放大倍数
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.red,
            // color: Color.fromRGBO(r, g, b, opacity)
            fontWeight: FontWeight.w800, // 设置字体粗细
            fontStyle: FontStyle.italic, // 设置是否倾斜
            decoration: TextDecoration.lineThrough, // 设置类似下划线
            decorationColor: Colors.black, // 设置线的颜色
            decorationStyle: TextDecorationStyle.dashed, // 设置线的样式
            letterSpacing: 5.0, // 设置字间距

          ),
        ),
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration( // 设置 Container 背景、边框
          color: Colors.yellow,
          border: Border.all(
            color: Colors.blue,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(  // 设置圆角
            Radius.circular(20.0),
          ),
        ),
        // padding: EdgeInsets.all(10.0),
        // padding: EdgeInsets.fromLTRB(10, 20, 30, 0), // 设置内容器之间的间距
        // margin: EdgeInsets.fromLTRB(10, 20, 30, 0), // 设置外容器之间的间距
        // transform: Matrix4.translationValues(100.0, 0.0, 0.0),  // 设置偏移
        // transform: Matrix4.rotationZ(0.3),  // 设置旋转
        // transform: Matrix4.rotationZ(-0.3), 
        // transform: Matrix4.diagonal3Values(1.2, 1.0, 1.0),  // 缩放 
        alignment: Alignment.bottomLeft,
      ),
    );
  }
}
