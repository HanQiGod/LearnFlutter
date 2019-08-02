import 'package:demo1/res/Routers.dart';
import 'package:demo1/res/listData.dart';
import 'package:flutter/material.dart';


/**
 * 
 * Flutter AspectRatio、Card 卡片组件:
 * 
 * AspectRatio 组件是根据设置调整子元素 child 的宽高比。（宽高比是相对于父元素，让子元素铺满整个父元素）
 * 
 * 
 *  */

//  Card 卡片组件
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

// Card 卡片组件

class HomeContent extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[

        Card(
          margin: EdgeInsets.all(10),
          child: Column(

            children: <Widget>[

              ListTile(
                title: Text('张三',style:TextStyle(fontSize:28)),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话: xxxxx'),
              ),
              ListTile(
                title: Text('地址: 陕西省西安市'),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(

            children: <Widget>[

              ListTile(
                title: Text('李四',style:TextStyle(fontSize:28)),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话: xxxxx'),
              ),
              ListTile(
                title: Text('地址: 陕西省西安市'),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(

            children: <Widget>[

              ListTile(
                title: Text('王五',style:TextStyle(fontSize:28)),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话: xxxxx'),
              ),
              ListTile(
                title: Text('地址: 陕西省西安市'),
              ),
            ],
          ),
        )
      ],
    );
  }
}
