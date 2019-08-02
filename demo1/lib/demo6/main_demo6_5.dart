import 'package:flutter/material.dart';

/**
 * 
 * Flutter ListView 基础列表组件、水平列表组件、图标组件
 * 
 * Flutter 提供了四种列表：
 *   1. 垂直列表（包括垂直图文列表）
 *   2. 水平列表
 *   3. 动态列表
 *   4. 矩阵式列表
 * 
 *  */


//  水平列表展示

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


// 水平列表高度自适应，垂直列表宽度自适应
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container( // 外加一个容器，设置其高度，否则会根据屏幕自动扩展最大
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal, // 列表方向：水平h/垂直v
        children: <Widget>[
          Container(
            width: 180, // 垂直列表中宽度可以不设置，但是高度一定要有，默认屏幕宽度；但是水平列表中宽度一定要有,高度可以没有
            // height: 180,
            color: Colors.red,
          ),
          Container(
            width: 180,
            // height: 180,
            color: Colors.blue,
            child: ListView(
              children: <Widget>[
                Image.network('https://www.itying.com/images/flutter/1.png'),
                Text('这是一个文本')
              ],
            ),
          ),
          Container(
            width: 180,
            // height: 180,
            color: Colors.deepOrange,
          ),
          Container(
            width: 180,
            // height: 180,
            color: Colors.red,
          ),
          Container(
            width: 180,
            // height: 180,
            color: Colors.blue,
          ),
          Container(
            width: 180,
            // height: 180,
            color: Colors.deepOrange,
          ),
        ],
      ),
    );
  }
}
