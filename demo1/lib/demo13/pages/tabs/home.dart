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
        )
        
      ],
    );
  }
}