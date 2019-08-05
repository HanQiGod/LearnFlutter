import 'package:demo1/demo13/pages/form.dart';
import 'package:flutter/material.dart';


class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('跳转到表单页面并传值'),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
          onPressed: (){
            // 普通路由并传值
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (contenxt) => FormPage(title: '传值效果测试',)
            //   )
            // );

            // 命名路由并传值
            Navigator.pushNamed(context, '/form', arguments: {
              'id': 123,
              'name': '张三',
            });

          },
        )
      ],
    );
  }
}