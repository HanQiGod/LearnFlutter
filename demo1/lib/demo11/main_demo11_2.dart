import 'package:demo1/res/Routers.dart';
import 'package:demo1/res/listData.dart';
import 'package:flutter/material.dart';


/**
 * 
 * Flutter 页面布局 Wrap 组件：主要实现流布局的组件
 * 
 * RaisedButton 组件：按钮组件
 *  */


//  使用 Wrap 组件实现电视剧集数流式布局

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

//  使用 Wrap 组件实现电视剧集数流式布局

class HomeContent extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 400,
      height: 600,
      color: Colors.pink,
      child: Wrap(

      spacing: 10,
      runSpacing: 10,
      // direction: Axis.vertical, // 排列方向
      // alignment: WrapAlignment.spaceAround,  // 很少用
      // runAlignment: WrapAlignment.end,
      children: <Widget>[

        MyButton('第1集'),
        MyButton('第2集第2集第2集'),
        MyButton('第3集'),
        MyButton('第4集'),
        MyButton('第5集第5集'),
        MyButton('第6集'),
        MyButton('第7集'),
        MyButton('第8集'),
        MyButton('第9集'),
        MyButton('第10集'),
        MyButton('第1集'),
        MyButton('第2集第2集第2集'),
        MyButton('第3集'),
        MyButton('第4集'),
        MyButton('第5集第5集'),
        MyButton('第6集'),
        MyButton('第7集'),
        MyButton('第8集'),
        MyButton('第9集'),
        MyButton('第10集'),
      ],
    ),
    );
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
