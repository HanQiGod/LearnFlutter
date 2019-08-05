import 'package:flutter/material.dart';

import '../nextMain.dart' as nextMain; // 二级页面

import 'package:demo1/demo1/main_demo1.dart' as main_demo1;

import 'package:demo1/demo2/main_demo2.dart' as main_demo2;

import 'package:demo1/demo3/main_demo3.dart' as main_demo3;

import 'package:demo1/demo4/main_demo4.dart' as main_demo4;

import 'package:demo1/demo5/main_demo5_0.dart' as main_demo5_0;
import 'package:demo1/demo5/main_demo5_1.dart' as main_demo5_1;
import 'package:demo1/demo5/main_demo5_2.dart' as main_demo5_2;
import 'package:demo1/demo5/main_demo5_3.dart' as main_demo5_3;

import 'package:demo1/demo6/main_demo6_1.dart' as main_demo6_1;
import 'package:demo1/demo6/main_demo6_2.dart' as main_demo6_2;
import 'package:demo1/demo6/main_demo6_3.dart' as main_demo6_3;
import 'package:demo1/demo6/main_demo6_4.dart' as main_demo6_4;
import 'package:demo1/demo6/main_demo6_5.dart' as main_demo6_5;
import 'package:demo1/demo6/main_demo6_6.dart' as main_demo6_6;
import 'package:demo1/demo6/main_demo6_7.dart' as main_demo6_7;
import 'package:demo1/demo6/main_demo6_8.dart' as main_demo6_8;
import 'package:demo1/demo6/main_demo6_9.dart' as main_demo6_9;
import 'package:demo1/demo6/main_demo6_10.dart' as main_demo6_10;

import 'package:demo1/demo7/main_demo7_1.dart' as main_demo7_1;
import 'package:demo1/demo7/main_demo7_2.dart' as main_demo7_2;
import 'package:demo1/demo7/main_demo7_3.dart' as main_demo7_3;
import 'package:demo1/demo7/main_demo7_4.dart' as main_demo7_4;

import 'package:demo1/demo8/main_demo8_1.dart' as main_demo8_1;
import 'package:demo1/demo8/main_demo8_2.dart' as main_demo8_2;
import 'package:demo1/demo8/main_demo8_3.dart' as main_demo8_3;
import 'package:demo1/demo8/main_demo8_4.dart' as main_demo8_4;
import 'package:demo1/demo8/main_demo8_5.dart' as main_demo8_5;
import 'package:demo1/demo8/main_demo8_6.dart' as main_demo8_6;
import 'package:demo1/demo8/main_demo8_7.dart' as main_demo8_7;

import 'package:demo1/demo9/main_demo9_1.dart' as main_demo9_1;
import 'package:demo1/demo9/main_demo9_2.dart' as main_demo9_2;
import 'package:demo1/demo9/main_dem09_3.dart' as main_demo9_3;
import 'package:demo1/demo9/main_demo9_4.dart' as main_demo9_4;
import 'package:demo1/demo9/main_demo9_5.dart' as main_demo9_5;

import 'package:demo1/demo10/main_demo10_1.dart' as main_demo10_1;
import 'package:demo1/demo10/main_demo10_2.dart' as main_demo10_2;
import 'package:demo1/demo10/main_demo10_3.dart' as main_demo10_3;
import 'package:demo1/demo10/main_demo10_4.dart' as main_demo10_4;
import 'package:demo1/demo10/main_demo10_5.dart' as main_demo10_5;

import 'package:demo1/demo11/main_demo11_1.dart' as main_demo11_1;
import 'package:demo1/demo11/main_demo11_2.dart' as main_demo11_2;

import 'package:demo1/demo12/main_demo12_1.dart' as main_demo12_1;
import 'package:demo1/demo12/main_demo12_2.dart' as main_demo12_2;
import 'package:demo1/demo12/main_demo12_3.dart' as main_demo12_3;

import 'package:demo1/demo13/main_demo13_1.dart' as main_demo13_1;
import 'package:demo1/demo13/main_demo13_2.dart' as main_demo13_2;
import 'package:demo1/demo13/main_demo13_3.dart' as main_demo13_3;

import '../demo14/main_demo14_1.dart' as main_demo14_1;
import '../demo14/main_demo14_2.dart' as main_demo14_2;
import '../demo14/main_demo14_3.dart' as main_demo14_3;

import '../demo15/main_demo15_1.dart' as main_demo15_1;




// 注册路由表
Map<String, WidgetBuilder> mainRouters = {
  
  'nextMain': (context) => nextMain.MyApp(),

  'main_demo1': (context) => main_demo1.MyApp(),

  'main_demo2': (context) => main_demo2.MyApp(),

  'main_demo3': (context) => main_demo3.MyApp(),

  'main_demo4': (context) => main_demo4.MyApp(),

  'main_demo5_0': (context) => main_demo5_0.MyApp(),
  'main_demo5_1': (context) => main_demo5_1.MyApp(),
  'main_demo5_2': (context) => main_demo5_2.MyApp(),
  'main_demo5_3': (context) => main_demo5_3.MyApp(),

  'main_demo6_1': (context) => main_demo6_1.MyApp(),
  'main_demo6_2': (context) => main_demo6_2.MyApp(),
  'main_demo6_3': (context) => main_demo6_3.MyApp(),
  'main_demo6_4': (context) => main_demo6_4.MyApp(),
  'main_demo6_5': (context) => main_demo6_5.MyApp(),
  'main_demo6_6': (context) => main_demo6_6.MyApp(),
  'main_demo6_7': (context) => main_demo6_7.MyApp(),
  'main_demo6_8': (context) => main_demo6_8.MyApp(),
  'main_demo6_9': (context) => main_demo6_9.MyApp(),
  'main_demo6_10': (context) => main_demo6_10.MyApp(),

  'main_demo7_1': (context) => main_demo7_1.MyApp(),
  'main_demo7_2': (context) => main_demo7_2.MyApp(),
  'main_demo7_3': (context) => main_demo7_3.MyApp(),
  'main_demo7_4': (context) => main_demo7_4.MyApp(),

  'main_demo8_1': (context) => main_demo8_1.MyApp(),
  'main_demo8_2': (context) => main_demo8_2.MyApp(),
  'main_demo8_3': (context) => main_demo8_3.MyApp(),
  'main_demo8_4': (context) => main_demo8_4.MyApp(),
  'main_demo8_5': (context) => main_demo8_5.MyApp(),
  'main_demo8_6': (context) => main_demo8_6.MyApp(),
  'main_demo8_7': (context) => main_demo8_7.MyApp(),

  'main_demo9_1': (context) => main_demo9_1.MyApp(),
  'main_demo9_2': (context) => main_demo9_2.MyApp(),
  'main_demo9_3': (context) => main_demo9_3.MyApp(),
  'main_demo9_4': (context) => main_demo9_4.MyApp(),
  'main_demo9_5': (context) => main_demo9_5.MyApp(),

  'main_demo10_1': (context) => main_demo10_1.MyApp(),
  'main_demo10_2': (context) => main_demo10_2.MyApp(),
  'main_demo10_3': (context) => main_demo10_3.MyApp(),
  'main_demo10_4': (context) => main_demo10_4.MyApp(),
  'main_demo10_5': (context) => main_demo10_5.MyApp(),

  'main_demo11_1': (context) => main_demo11_1.MyApp(),
  'main_demo11_2': (context) => main_demo11_2.MyApp(),

  'main_demo12_1': (context) => main_demo12_1.MyApp(),
  'main_demo12_2': (context) => main_demo12_2.MyApp(),
  'main_demo12_3': (context) => main_demo12_3.MyApp(),

  'main_demo13_1': (context) => main_demo13_1.MyApp(),
  'main_demo13_2': (context) => main_demo13_2.MyApp(),
  'main_demo13_3': (context) => main_demo13_3.MyApp(),

  'main_demo14_1': (context) => main_demo14_1.MyApp(),
  'main_demo14_2': (context) => main_demo14_2.MyApp(),
  'main_demo14_3': (context) => main_demo14_3.MyApp(),

  'main_demo15_1': (context) => main_demo15_1.MyApp(),

};