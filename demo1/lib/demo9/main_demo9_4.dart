import 'package:demo1/res/Routers.dart';
import 'package:flutter/material.dart';


/**
 * 
 * Flutter 页面布局 Stack 层叠组件，Stack 与 Align，Stack 与 Positioned 实现定位布局
 * 
 * Stack 组件主要是定位布局
 * 
 *  */

//  布局组件例子练习 - 使用 Stack 与 Positioned 实现定位布局
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


//  布局组件例子练习 - 使用 Stack 与 Positioned 实现定位布局

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: 300,
        height: 400,
        color: Colors.red,
        child: Stack(

          // alignment: Alignment.center, // 所有子元素的位置都居中了
          children: <Widget>[

            Positioned(
              left: 10,
              child: Icon(Icons.home,size:40, color:Colors.white),
            ),
            Positioned(
              left: 100,
              bottom: 0,
              child: Icon(Icons.search,size:30, color:Colors.white),
            ),
            Positioned(
              right: 0,
              child: Icon(Icons.send,size:60, color:Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
