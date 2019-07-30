import 'package:flutter/material.dart';

void main() {
  // 调用内置的组件，其实内置的组件就是一个类
  // Center 组件 -- 居中的组件
  // Text 组件 -- 文本组件
  runApp(new Center(
    child: new Text(
      '你好 Flutter',
      textDirection: TextDirection.ltr,
    ),
  ));

}
