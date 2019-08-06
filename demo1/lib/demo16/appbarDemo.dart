import 'package:flutter/material.dart';

// Flutter AppBar 自定义顶部导航栏按钮、图标、颜色以及 TabBar 定义顶部 Tab 切换
// 实现顶部 Tab 切换，方法一：


class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController( // 顶部 tab
      length: 2,  // 设置顶部 tab 按钮个数
      child: Scaffold(
        appBar: AppBar(
          title: Text('AppBarDemo'),
          centerTitle: true, // 标题居中显示
          // backgroundColor: Colors.red, // 设置 AppBar 背景颜色
          // leading: IconButton( // 左侧设置按钮
          //   icon: Icon(Icons.menu),
          //   onPressed: (){
          //     print('menu');
          //   },
          // ),
          // actions: <Widget>[
          //   // 设置右侧按钮
          //   IconButton(
          //     icon: Icon(Icons.search),
          //     onPressed: () {
          //       print('search');
          //     },
          //   ),
          //   IconButton(
          //     icon: Icon(Icons.settings),
          //     onPressed: () {
          //       print('settings');
          //     },
          //   )
          // ],
          bottom: TabBar(
            tabs: <Widget>[

              Tab(text: '热门',),
              Tab(text: '推荐',),
            ],
          ),
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
