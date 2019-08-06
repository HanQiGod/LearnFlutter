# LearnFlutter

#### 前言
&emsp;&emsp;`Dart` 作为开发 `Flutter` 应用的基础语言，对于开发 `Flutter` 应用你必须要学习 `Dart` 语言。其实，个人认为高级语言基本上都是大同小异，90% 是想通的，只有 10% 是此种语言的特性，需要重点学习。我个人认为，只要你有一门高级语言的基础，学习 `Dart` 语言其实是不难的。习惯上和思想上多注意一点就 ok 了。😃😆

#### Flutter 介绍
&emsp;&emsp;`Flutter` 是谷歌公司开发的一款开源、免费的移动 UI 框架，可以让我们快速的在Android 和 iOS 上构建高质量 App。它最大的特点就是跨平台、以及高性能。
&emsp;&emsp;`Flutter` 基于谷歌的 `Dart` 语言，如果没有任何 `Dart` 语言的基础，不建议直接学习Flutter。建议先学习Dart语言的基本语法。然后再进入 `Flutter` 的学习。
&emsp;&emsp;市面上已经有很多的混合 App 开发框架了，但是有些混合 APP 开发框架主要是针对前端开发者的：比如 ReactNative (基于React)、lonic (基于Angular、Vue、React) 。有些则是针对 Net 平台针对 .Net 开发者的比如: Xamarin。
&emsp;&emsp;`Flutter` 是谷歌基于 `Dart` 语言开发的一款跨平台的移动 App 开发框架。它针对的开发者是全部开发者。它的性能相比 RN、lonic 这样的框架要好一-些，但是现在的手机设备上是看不出任何区别的。
&emsp;&emsp;由于谷歌的推广，以及国内阿里的闲鱼 App 是 `Flutter` 开发的。所以 Flutter 目前(2019年5月22)关注度非常高的框架。所以非常有必要学习。因为大家都在学，我们不学是不是就有点 Out 了。但是我们要知道的一点就是 Flutter 还比较年轻，相比 lonic、以及 RN 这样的老框架来说社区不是特别完善。还有就是学习成本高。希望未来社区能更加完善、学习成本
更低。

![效果图](https://github.com/HanQiGod/LearnFlutter/blob/master/demo1/flutter.gif)


#### 学习目录（demo1/lib/）
##### Demo1 - Flutter 目录结构介绍和入口方法
 - Flutter 目录结构介绍    
 - Flutter 入口文件和入口方法 
##### Demo2 - 自定义 Widget、Center 组件、Text 组件
 - Flutter 第一个 Demo Center 组件的使用
 - Flutter 把内容单独抽离成一个组件 
 - 给 Text 组件增加一些装饰  
##### Demo3 - MaterialApp 组件、Scaffold 组件
 - MaterialApp 组件
 - Scaffold 组件
##### Demo4 - Flutter Container 组件、Text 组件
 - Container 组件
 - Text 组件
##### Demo5 - Flutter 图片组件 Image 、本地图片、远程图片、图片剪切
 - Flutter 图片组件 
 - Flutter 引入本地图片    
 - Flutter 实现圆角以及实现圆形图片
##### Demo6 - Flutter ListView 基础列表组件、水平列表组件、图标组件 
 - Flutter 列表参数    
 - Flutter 基本列表    
 - Flutter 水平列表
##### Demo7 - ListView 动态列表组件以及循环动态数据
 - Flutter 列表参数    
 - Flutter 基本列表  
 - Flutter 水平列表  
 - Flutter 动态列表（动态循环数据） 
##### Demo8 - GridView 组件 以及动态 GridView
 - Flutter  GridView 组件的常用参数  
 - Flutter GridView.count 实现网格布局  
 - Flutter GridView.builder 实现网格布局   
##### Demo9 - Flutter页面布局 Paddiing Row Column Expanded组件
 - Flutter Paddiing 组件
 - Flutter Row 水平布局组件  
 - Flutter Column 垂直布局组件    
 - Flutter Expanded 类似 Web 中的 Flex 布局    
 - Flutter 实现布局案例
##### Demo10 - Flutter 页面布局 Stack 层叠组件 Stack 与 Align  Stack 与Positioned 实现定位布局
 - Flutter Stack 组件
 - Flutter Stack Align 
 - Flutter Stack Positioned   

##### Demo11 - Flutter 页面布局 Flutter AspectRatio、Card 卡片组件、卡片图文列表

 - Flutter AspectRatio 组件
 - Flutter Card 组件  
 - Flutter Card 组件实现一个图文列表布局

##### Demo12 - Flutter 页面布局 Wrap 组件

 - Flutter RaisedButton 定义一个按钮
 - Wrap 组件    
 - Wrap 组件实现流布局列表

##### Demo13 - Flutter StatefulWidget 有状态组件 、页面上绑定数据、改变页面数据 、实现计数器功能 动态列表，BottomNavigationBar 自定义底部导航条以及实现页面切换

 - Flutter 中自定义有状态组件
 - Flutter 中状态管理 实现计数器功能
 - Flutter 状态管理 实现动态列表
 - Flutter BottomNavigationBar 自定义底部导航条
 -  Flutter 底部导航条页面切换

##### Demo14 - Flutter 中的路由 普通路由、普通路由传值、命名路由、命名路由传值

 - Flutter 中的普通路由
 -  Flutter 中的基本路由使用  
 - Flutter 中的基本路由跳转传值    
 -  Flutter 中的命名路由    
 - Flutter 中的命名路由跳转传值

##### Demo15 - Flutter 中的路由 pushReplacementNamed 路由替换 、pushNamedAndRemoveUntil 返回到根路由

 - Flutter 中返回到上一级页面
 -  Flutter 中替换路由 
 - Flutter 中路由替换实现多级路由 返回到根路由   
 -  Flutter pushNamedAndRemoveUntil 返回到根路由
 ##### Demo16 - Flutter 自定义 AppBar 定义顶部 Tab 切换，底部 Tab 结合顶部Tab 实现类似头条页面布局

 - Flutter AppBar 自定义顶部按钮图标、颜色
 - Flutter AppBar 中自定义 TabBar 实现顶部 Tab 切换 
 - Flutter 把 TabBar 放在导航最顶部    
 - Flutter AppBar 中自定义TabBar实现 Tabs 的另一种方法。

##### Demo17 - Flutter 中通过 TabController 定义顶部 tab 切换，介绍生命周期函数

 - Flutter AppBar 自定义顶部按钮图标、颜色
 -  Flutter AppBar 中自定义 TabBar 实现顶部 Tab 切换    
 - Flutter 把 TabBar 放在导航最顶部    
 - Flutter AppBar 中自定义 TabBar 实现Tabs的另一种方法 TabController

##### Demo18 - Flutter Drawer 侧边栏、DrawerHeader、 UserAccountsDrawerHeader 以及侧边栏内容布局
 - Flutter Drawer 侧边栏
 -  Flutter DrawerHeader    
 -  Flutter UserAccountsDrawerHeader    
 - Flutter 侧边栏路由跳转    
##### Demo19 - Flutter 中的按钮组件 RaisedButton、FlatButton、OutlineButton、IconButton、ButtonBar 以及自定义按钮组件
 - Flutter 中的按钮组件介绍
 - Flutter 按钮组件中的一些属性  
 - RaisedButton
 - Flutter FlatButton
 - Flutter OutlineButton
 -  Flutter IconButton
 - Flutter ButtonBar
 ##### Demo20 - Flutter 中的表单 TextField 单行文本框、多行文本框 CheckBox、CheckboxListTile
 - Flutter 常用表单介绍
 - TextField 文本框组件  
 - Checkbox、CheckboxListTile 多选框组件    
 - Radio、RadioListTile 单选按钮组件   
 - 开关 Switch
