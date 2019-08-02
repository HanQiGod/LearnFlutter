import 'package:demo1/res/Routers.dart';
import 'package:flutter/material.dart';


/**
 * 
 * Flutter StatefulWidget 有状态组件、页面上绑定数据、改变页面数据
 * 
 * 1. StatelessWidget 是无状态组件，状态不可改变
 * 
 * 2. StatefulWidget 是有状态组件，持有的状态可能在 widget 声明周期中改变，通俗讲：如果我们想改变页面中的数据，
 *    我们就要使用 StatefulWidget 组件
 * 
 *  */


//  继承 StatefulWidget 组件创建的组件，可以改变页面的数据

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
        body: HomePage(),
      );
  }
}


// 继承 StatefulWidget 组件创建的组件，可以改变页面的数据
// 自定义有状态组件 

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int countNum = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[

           SizedBox(height: 200,),
           Chip(
             label: Text('${this.countNum}'),
           ),
           SizedBox(height: 20,),
           RaisedButton(
             child: Text('按钮'),
             onPressed: () {

               // setState 方法，只有有状态组件里才有
               setState(() { // setState 方法调用之后，重新渲染页面
                 this.countNum++;
               });
               print(this.countNum);
             },
           )
         ],
       ),
    );
  }
}