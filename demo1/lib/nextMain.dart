import 'package:flutter/material.dart';

import 'res/catalogData.dart';

/**
 * 
 * Flutter 学习笔记目录
 * 
 *  */

// 路由中传过来的数据
 var args;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // 获取路由参数  
    args = ModalRoute.of(context).settings.arguments;

    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(args['title'] as String),
        ),
        body: HomeContent(),
      );
  }
}

//  自定义组件
class HomeContent extends StatelessWidget {

  // 自定义方法
  Widget _getListData(context, index) {
    return ListTile(
      title: Text(args['list'][index]),
      onTap: () {
        // item 点击事件 ,并传值
        Navigator.pushNamed(context, args['list'][index], arguments: args['list'][index]);
      },
    );
  }
 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: args['list'].length,
      itemBuilder: this._getListData,
    );
  }
}
