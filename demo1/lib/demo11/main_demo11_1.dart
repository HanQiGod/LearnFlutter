import 'package:demo1/res/Routers.dart';
import 'package:demo1/res/listData.dart';
import 'package:flutter/material.dart';


/**
 * 
 * Flutter 页面布局 Wrap 组件：主要实现流布局的组件
 * 
 * RaisedButton 组件：按钮组件
 *  */


//  使用 RaisedButton 组件定义一个按钮

// 入口方法
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

//  使用 RaisedButton 组件定义一个按钮

class HomeContent extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyButton('第四季');
  }
}


// 封装一个按钮组件

class MyButton extends StatelessWidget {

  final String _name; // final 设置为常量
  const MyButton(this._name,{Key key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(this._name),
      textColor: Theme.of(context).accentColor,
      onPressed: (){

      },
    );
  }
}
