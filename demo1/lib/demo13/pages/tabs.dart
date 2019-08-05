import 'package:demo1/demo13/pages/tabs/home.dart';
import 'package:demo1/demo13/pages/tabs/category.dart';
import 'package:demo1/demo13/pages/tabs/settings.dart';
import 'package:flutter/material.dart';

// 将 Tabs 抽离出来

class Taps extends StatefulWidget {

  final index;
  Taps({Key key,this.index = 0}) : super(key: key);

  _TapsState createState() => _TapsState(this.index);
}

class _TapsState extends State<Taps> {

  int _currentIndex;
  _TapsState(index) {
    this._currentIndex = index;
  }
  List<Widget> _pageList = [
    HomePage(),
    CategoryPage(),
    SettingsPage(),
  ];
  List _titleList = [
    '首页',
    '分类',
    '设置',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this._titleList[this._currentIndex]),
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex, // 配置对应选中的索引值
          onTap: (int index) {
            setState(() { // 改变状态 
              this._currentIndex = index;
            });
          },
          iconSize: 36.0, // icon 的大小
          fixedColor: Colors.red, // 选中 bar 的颜色
          type: BottomNavigationBarType.fixed, // 如果 bar 大于 4 个就要自适应，配置可以有多个按钮
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('分类')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('设置')
            ),
          ],
        ),
      );
  }
}