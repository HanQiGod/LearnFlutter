import 'package:flutter/material.dart';

/**
 * 
 * Flutter 页面布局 Padding Row Column Expanded 组件详解
 * 
 * Row 水平布局组件
 * 
 * Column 垂直布局组件
 * 
 * Expanded 组件类似 Web 中 Flex 布局
 * 
 *  */

//  Expanded 组件例子

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FlutterDemo'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

// Expanded 组件例子
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Expanded( // 占一份
          flex: 1,
          child: IconContainer(
            Icons.home,
            color: Colors.red,
          ),
        ),
        Expanded( // 占二份
          flex: 2,
          child: IconContainer(
            Icons.search,
            color: Colors.blue,
          ),
        ),
        Expanded( // 占一份
          flex: 1,
          child: IconContainer(
            Icons.hotel,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}

// 自定义按钮组件
class IconContainer extends StatelessWidget {
  double size = 32; // 设置默认值
  Color color = Colors.red;
  IconData icon;
  IconContainer(this.icon, {this.color, this.size});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 100,
      height: 100,
      color: this.color,
      child: Center(
        child: Icon(
          this.icon,
          size: this.size,
          color: Colors.white,
        ),
      ),
    );
  }
}
