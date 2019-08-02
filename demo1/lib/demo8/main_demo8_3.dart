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

//  Row 水平布局组件例子

// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // 获取路由参数  
    var args = ModalRoute.of(context).settings.arguments;

    // MaterialApp 组件是作为根组件来使用的
    // Scaffold 组件修饰，可设置导航栏
    return Scaffold(
        appBar: AppBar(
          title: Text(args),
        ),
        body: HomeContent(),
      );
  }
}

// Row 水平布局组件的使用
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 400,
      height: 800,
      color: Colors.pink,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 主轴排列方式 -- 水平
        crossAxisAlignment: CrossAxisAlignment.start,    // 次轴排列方式 -- 垂直
        children: <Widget>[
          IconContainer(
            Icons.home,
            color: Colors.red,
          ),
          IconContainer(
            Icons.search,
            color: Colors.blue,
          ),
          IconContainer(
            Icons.hotel,
            color: Colors.orange,
          )
        ],
      ),
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
