import 'package:flutter/material.dart';

// void main() {
//   // 调用内置的组件，其实内置的组件就是一个类
//   // Center 组件 -- 居中的组件
//   // Text 组件 -- 文本组件
//   runApp(new Center(
//     child: new Text(
//       '你好 Flutter',
//       textDirection: TextDirection.ltr,
//     ),
//   ));

// }

class MyApp extends StatelessWidget {
  // Widget 是部件或组件，在 Flutter 中所有的东西都是组件,比如 Center、Text 都是 Widget
  @override
  Widget build(BuildContext context) {

    // 获取路由参数  
    var args = ModalRoute.of(context).settings.arguments;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(args),
      ),
      body: new Center(
        child: new Text(
          '你好 Flutter',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
