import 'package:flutter/material.dart';


/**
 * 
 * Flutter AppBar 自定义顶部导航栏按钮、图标、颜色以及 TabBar 定义顶部 Tab 切换
 * 
 * 实现顶部 Tab 切换，方法二：
 * 
 * 这样实现的好处，可以使用 tabController 里面的一些属性和方法。
 * 
 *  */

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void dispose() {  // 组件销毁生命周期函数
    // TODO: implement dispose
    super.dispose();

    _tabController.dispose(); // 将 tabController 销毁
  }


  @override
  void initState() {  // 组件创建的生命周期函数，已加载就会触发
    // TODO: implement initState
    super.initState();

    _tabController = new TabController(vsync: this, length: 7);

    // 添加监听，监听索引值
    _tabController.addListener((){
      print(_tabController.index);
      setState(() {
        // 实现动态的功能

      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarControllerPage'),
        bottom: TabBar(
          controller: this._tabController,  // 注意：一定要设置
          isScrollable: true, // 设置 tab 是否可以滚动
          tabs: <Widget>[

            Tab(text: '推荐0',),
            Tab(text: '推荐1',),
            Tab(text: '推荐2',),
            Tab(text: '推荐3',),
            Tab(text: '推荐4',),
            Tab(text: '推荐5',),
            Tab(text: '推荐6',),
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,  // 注意：一定要设置
        children: <Widget>[

          ListView(
            children: <Widget>[
              ListTile(
                title: Text('第 1 个 tab'),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('第 2 个 tab'),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('第 3 个 tab'),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('第 4 个 tab'),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('第 5 个 tab'),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('第 6 个 tab'),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('第 7 个 tab'),
              )
            ],
          )
        ],
      ),
    );
  }
}