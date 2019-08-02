import 'package:demo1/res/Routers.dart';
import 'package:demo1/res/listData.dart';
import 'package:flutter/material.dart';


/**
 * 
 * Flutter 页面布局 Stack 层叠组件，Stack 与 Align，Stack 与 Positioned 实现定位布局
 * 
 * Stack 组件主要是定位布局
 * 
 *  */

//  布局组件例子练习
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

//  布局组件例子练习 

class HomeContent extends StatelessWidget {

  Widget _getData(context, index) {
    return Container(
      height: 100,
      child: Stack(

        alignment: Alignment.bottomCenter,
        children: <Widget>[

          Image.network(listData[index]["imageUrl"],fit: BoxFit.cover,),
          Text(
              listData[index]["title"],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ))

          
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
      ),
      itemCount: listData.length,
      itemBuilder: this._getData,
    );
  }
}
