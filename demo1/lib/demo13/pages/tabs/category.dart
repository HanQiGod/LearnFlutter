import 'package:demo1/demo13/pages/form.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

// class _CategoryPageState extends State<CategoryPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(

//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         RaisedButton(
//           child: Text('跳转到表单页面并传值'),
//           color: Theme.of(context).accentColor,
//           textTheme: ButtonTextTheme.primary,
//           onPressed: (){
//             // 普通路由并传值
//             // Navigator.of(context).push(
//             //   MaterialPageRoute(
//             //     builder: (contenxt) => FormPage(title: '传值效果测试',)
//             //   )
//             // );

//             // 命名路由并传值
//             Navigator.pushNamed(context, '/form', arguments: {
//               'id': 123,
//               'name': '张三',
//             });

//           },
//         )
//       ],
//     );
//   }
// }

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // 可以 scaffold 里面嵌套 scaffold
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  indicatorColor: Colors.red, // 指示器的颜色
                  labelColor: Colors.red, // 指示器字体的颜色
                  unselectedLabelColor: Colors.white, // 未选中的颜色
                  indicatorSize: TabBarIndicatorSize.label, // 设置线的长度： label 表示与文字等宽
                  tabs: <Widget>[
                    Tab(
                      text: '热销热销热销',
                    ),
                    Tab(
                      text: '推荐',
                    )
                  ],
                ),
              )
            ],
          ),
          // bottom: TabBar(
          //   tabs: <Widget>[
          //     Tab(
          //       text: '热销',
          //     ),
          //     Tab(
          //       text: '推荐',
          //     )
          //   ],
          // ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('这是第一个tab'),
                ),
                ListTile(
                  title: Text('这是第一个tab'),
                ),
                ListTile(
                  title: Text('这是第一个tab'),
                ),
                ListTile(
                  title: Text('这是第一个tab'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('这是第二个tab'),
                ),
                ListTile(
                  title: Text('这是第二个tab'),
                ),
                ListTile(
                  title: Text('这是第二个tab'),
                ),
                ListTile(
                  title: Text('这是第二个tab'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
