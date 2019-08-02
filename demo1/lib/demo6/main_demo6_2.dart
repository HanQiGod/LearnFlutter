import 'package:flutter/material.dart';

/**
 * 
 * Flutter ListView 基础列表组件、水平列表组件、图标组件
 * 
 * Flutter 提供了四种列表：
 *   1. 垂直列表（包括垂直图文列表）
 *   2. 水平列表
 *   3. 动态列表
 *   4. 矩阵式列表
 * 
 *  */

 //  展示 ListView 中的 ListTile 添加 Icon 图标

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

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.red,
            size: 40,
          ),
          title: Text(
            '英镑兑美元汇率创28月新低！约翰逊态度强硬 “无协议脱欧”风险加剧',
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(
              '过去几天，英国新任首相约翰逊频繁释放强硬信号，使得英国无协议脱欧的风险随之升温，英镑对美元汇率降至两年多的最低水平。'),
          trailing: Icon(
            Icons.settings,
            color: Colors.red,
            size: 40,
          ),
        ),
        ListTile(
          title: Text(
            '英镑兑美元汇率创28月新低！约翰逊态度强硬 “无协议脱欧”风险加剧',
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(
              '过去几天，英国新任首相约翰逊频繁释放强硬信号，使得英国无协议脱欧的风险随之升温，英镑对美元汇率降至两年多的最低水平。'),
        ),
        ListTile(
          title: Text(
            '英镑兑美元汇率创28月新低！约翰逊态度强硬 “无协议脱欧”风险加剧',
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(
              '过去几天，英国新任首相约翰逊频繁释放强硬信号，使得英国无协议脱欧的风险随之升温，英镑对美元汇率降至两年多的最低水平。'),
        ),
        ListTile(
          title: Text(
            '英镑兑美元汇率创28月新低！约翰逊态度强硬 “无协议脱欧”风险加剧',
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(
              '过去几天，英国新任首相约翰逊频繁释放强硬信号，使得英国无协议脱欧的风险随之升温，英镑对美元汇率降至两年多的最低水平。'),
        )
      ],
    );
  }
}
