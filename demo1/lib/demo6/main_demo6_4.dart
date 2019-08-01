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


//  展示图文列表

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

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[

        Image.network('https://www.itying.com/images/flutter/1.png'),

        Container(
          child: Text(
            '我是一个标题',
            textAlign:TextAlign.center,
            style:TextStyle(
              fontSize: 28
            )
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),

        Image.network('https://www.itying.com/images/flutter/2.png'),

        Container(
          child: Text(
            '我是一个标题',
            textAlign:TextAlign.center,
            style:TextStyle(
              fontSize: 28
            )
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),

        Image.network('https://www.itying.com/images/flutter/3.png'),

        Container(
          child: Text(
            '我是一个标题',
            textAlign:TextAlign.center,
            style:TextStyle(
              fontSize: 28
            )
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),

        Image.network('https://www.itying.com/images/flutter/4.png'),

        Container(
          child: Text(
            '我是一个标题',
            textAlign:TextAlign.center,
            style:TextStyle(
              fontSize: 28
            )
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),

        Image.network('https://www.itying.com/images/flutter/1.png'),

        Container(
          child: Text(
            '我是一个标题',
            textAlign:TextAlign.center,
            style:TextStyle(
              fontSize: 28
            )
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),

        Image.network('https://www.itying.com/images/flutter/2.png'),

        Container(
          child: Text(
            '我是一个标题',
            textAlign:TextAlign.center,
            style:TextStyle(
              fontSize: 28
            )
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),

        Image.network('https://www.itying.com/images/flutter/3.png'),

        Container(
          child: Text(
            '我是一个标题',
            textAlign:TextAlign.center,
            style:TextStyle(
              fontSize: 28
            )
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),

        Image.network('https://www.itying.com/images/flutter/4.png'),

      ],
    );
  }
}
