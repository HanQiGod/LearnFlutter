import 'package:demo1/demo13/pages/tabs/home.dart';
import 'package:demo1/demo13/pages/tabs/category.dart';
import 'package:demo1/demo13/pages/tabs/settings.dart';
import 'package:flutter/material.dart';

// 将 Tabs 抽离出来

class Taps extends StatefulWidget {
  Taps({Key key}) : super(key: key);

  _TapsState createState() => _TapsState();
}

class _TapsState extends State<Taps> {

  int _currentIndex = 0;
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
          currentIndex: this._currentIndex,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
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