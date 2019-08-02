import 'package:flutter/material.dart';


/**
 * 
 * 实现圆角以及圆形图片，方法一
 * 
 */



// 入口方法
// void main() => runApp(MyApp());


// 自定义组件
class MyApp extends StatelessWidget {

  // Widget 是部件或组件，在 Flutter 中所有的东西都是组件,比如 Center、Text 都是 Widget
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


// 继续分离 Center 组件
class HomeContent extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow,
          // 设置圆，方法一
          // borderRadius: BorderRadius.all(
          //   Radius.circular(150),
          // )
          // 设置圆，方法二：
          borderRadius: BorderRadius.circular(150),
          image: DecorationImage(
            image: NetworkImage('https://pics0.baidu.com/feed/2fdda3cc7cd98d10ec20bd74cca7a40b7aec9019.jpeg?token=4c42779191fdc6405349e717b312e196&s=ACC2854ECC41345F1979D8180300C0D2'),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}
