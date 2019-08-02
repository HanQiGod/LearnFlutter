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

//  图文列表卡片样例

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

//  图文列表卡片样例
// 注意：处理圆形头像可以使用 ClipOval 组件或者 CircleAvatar 组件，其中 CircleAvatar 组件是专门处理圆形头像的
// 建议使用 CircleAvatar 组件处理头像，不需要你在调整大小

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

              AspectRatio(
                aspectRatio: 20/9,
                child: Image.network('https://www.itying.com/images/flutter/1.png',fit:  BoxFit.cover,),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network('https://www.itying.com/images/flutter/1.png',fit:  BoxFit.cover,height: 60,width: 60,),
                ),
                title: Text('xxxx',style: TextStyle(fontSize: 28),),
                subtitle: Text('xxxx'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(

            children: <Widget>[

              AspectRatio(
                aspectRatio: 20/9,
                child: Image.network('https://www.itying.com/images/flutter/2.png',fit:  BoxFit.cover,),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://www.itying.com/images/flutter/2.png'),
                ),
                title: Text('xxxx',style: TextStyle(fontSize: 28),),
                subtitle: Text('xxxx'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(

            children: <Widget>[

              AspectRatio(
                aspectRatio: 20/9,
                child: Image.network('https://www.itying.com/images/flutter/3.png',fit:  BoxFit.cover,),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network('https://www.itying.com/images/flutter/3.png',fit:  BoxFit.cover,height: 60,width: 60,),
                ),
                title: Text('xxxx',style: TextStyle(fontSize: 28),),
                subtitle: Text('xxxx'),
              )
            ],
          ),
        )
      ],
    );
  }
}
