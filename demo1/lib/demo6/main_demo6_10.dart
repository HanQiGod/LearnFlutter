import 'package:flutter/material.dart';

import '../res/listData.dart'; // 引入外部资源

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

/**
 * 
 * 动态列表展示
 * 
 *  1. 使用for循环语句/使用 Map 语句
 * 
 *  2. 使用 ListView 提供的 ListBuilder 来实现
 * 
 */

// 使用 ListView 提供的 ListView.builder 来实现

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

// 用数组中的数据遍历到 ListView 上
class HomeContent extends StatelessWidget {
  // 抽离方法
  Widget _getListData(content, index) {
    return ListTile(
      leading: Image.network(listData[index]["imageUrl"]),
      title: Text(listData[index]["title"]),
      subtitle: Text(listData[index]["author"]),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }
}
