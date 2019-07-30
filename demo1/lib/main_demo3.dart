import 'package:flutter/material.dart';

// void main() {
//   // 调用内置的组件，其实内置的组件就是一个类
//   // Center 组件 -- 居中的组件
//   // Text 组件 -- 文本组件
//   // new 关键字可以省略掉
//   // runApp(new Center(
//   //   child: new Text(
//   //     '你好 Flutter',
//   //     textDirection: TextDirection.ltr,
//   //   ),
//   // ));

//   runApp(MyApp());
// }

// 上面代码简写成
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
        primarySwatch: Colors.yellow,
      ),
    );
  }
}


// 继续分离 Center 组件
class HomeContent extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '你好 Flutter 111222',
        textDirection: TextDirection.ltr,

        style: TextStyle(
          fontSize: 40.0, //double 类型
          color: Colors.red,
          // color: Color.fromRGBO(244, 234, 121, 0.5),
        ),
      ),
    );
  }
}
