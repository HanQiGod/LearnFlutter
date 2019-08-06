import 'package:demo1/demo13/pages/search.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        RaisedButton(
          child: Text('跳转到搜索页面'),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
          onPressed: (){
            // 普通路由跳转
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => SearchPage()
            //   )
            // );

            // 命名路由跳转
            Navigator.pushNamed(context, '/search');

          },
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text('跳转商品页面'),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
          onPressed: (){
            Navigator.pushNamed(context, '/product');
          },
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text('跳转到 AppBar'),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
          onPressed: (){
            // 路有跳转
            Navigator.pushNamed(context, '/appbarDemo');
          },
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text('跳转到 TabBarController'),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
          onPressed: (){
            // 路有跳转
            Navigator.pushNamed(context, '/tabBarController');
          },
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text('点击跳转到按钮演示页面'),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
          onPressed: (){
            // 路有跳转
            Navigator.pushNamed(context, '/buttonDemo');
          },
        ),
        SizedBox(height: 5,),
        RaisedButton(
          child: Text('按钮演示页面'),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
          onPressed: (){
            // 路有跳转
            Navigator.pushNamed(context, '/buttonDemo');
          },
        ),
        SizedBox(height: 5,),
        RaisedButton(
          child: Text('表单演示页面'),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
          onPressed: (){
            // 路有跳转
            Navigator.pushNamed(context, '/textFieldDemo');
          },
        ),
        SizedBox(height: 5,),
        RaisedButton(
          child: Text('CheckBox'),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
          onPressed: (){
            // 路有跳转
            Navigator.pushNamed(context, '/checkBoxDemo');
          },
        ),
        SizedBox(height: 5,),
        RaisedButton(
          child: Text('RadioDemo'),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
          onPressed: (){
            // 路有跳转
            Navigator.pushNamed(context, '/radioDemo');
          },
        )
        
      ],
    );
  }
}