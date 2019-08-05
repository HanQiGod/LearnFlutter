import 'package:flutter/material.dart';

import 'package:demo1/demo13/pages/tabs.dart'; // 根

import 'package:demo1/demo13/pages/form.dart';
import 'package:demo1/demo13/pages/search.dart';
import 'package:demo1/demo13/pages/product.dart';
import 'package:demo1/demo13/pages/productInfo.dart';


import '../user/login.dart';
import '../user/registerFirst.dart';
import '../user/registerSecond.dart';
import '../user/registerThird.dart';


// 注册路由表
Map<String, WidgetBuilder> routers = {

  '/': (context) => Taps(), // 根路由
  '/search': (context) => SearchPage(),
  '/form': (context) => FormPage(),
  '/product': (context) => ProductPage(),
  '/productInfo': (context) => ProductInfoPage(),

  '/login': (context) => LoginPage(),
  '/registerFirst': (context) => ResgisterFirstPage(),
  '/registerSecond': (context) => RegisterSecondPage(),
  '/registerThird': (context) => RegisterThirdPage(),

};