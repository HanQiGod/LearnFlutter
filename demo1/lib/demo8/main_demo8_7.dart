import 'package:flutter/material.dart';

/**
 * 
 * Flutter 页面布局 Padding Row Column Expanded 组件详解
 * 
 * Row 水平布局组件
 * 
 * Column 垂直布局组件
 * 
 * Expanded 组件类似 Web 中 Flex 布局
 * 
 *  */

//  布局组件例子练习

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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(

      children: <Widget>[

        Row(

          children: <Widget>[
            
            Expanded(
                child: Container(
                height: 180,
                color: Colors.black,
                child: Text('你好 Flutter'),
              ),
            )
          ],
        ),
        SizedBox(height: 10,),
        Row(

          children: <Widget>[

            Expanded(
              flex: 2,
              child: Container(
                height: 180,
                child: Image.network('https://www.itying.com/images/flutter/1.png',fit:BoxFit.cover),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              flex: 1,
              child: Container(
                height: 180,
                child: ListView(

                  children: <Widget>[

                    Container(
                      height: 85,
                      child: Image.network('https://www.itying.com/images/flutter/3.png',fit:BoxFit.cover),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 85,
                      child: Image.network('https://www.itying.com/images/flutter/4.png',fit:BoxFit.cover),
                    )
                  ],
                ),
              ),
            )
          ],
        )

      ],
    );
  }
}
