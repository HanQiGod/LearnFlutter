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

import 'package:demo1/demo16/appbarDemo.dart';

import 'package:demo1/demo17/tabBarController.dart';

import 'package:demo1/demo18/user.dart';

import 'package:demo1/demo19/buttonDemo.dart';

import 'package:demo1/demo20/checkBox.dart';
import 'package:demo1/demo20/radio.dart';
import 'package:demo1/demo20/textField.dart';

import 'package:demo1/demo20/formDemo.dart';

import 'package:demo1/demo21/datePicker.dart';
import 'package:demo1/demo21/datePickerPub.dart';


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

  '/appbarDemo': (context) => AppBarDemoPage(),

  '/tabBarController': (context) => TabBarControllerPage(),

  '/user': (context) => UserPage(),

  '/buttonDemo': (context) => ButtonDemoPage(),

  '/textFieldDemo': (context) => TextFieldDemoPage(),
  '/radioDemo': (context) => RadioDemoPage(),
  '/checkBoxDemo': (context) => CheckBoxDemoPage(),
  '/formDemo': (context) => FormDemoPage(),

  '/datePicker': (context) => DatePickerPage(),
  '/datePickerPub': (context) => DatePickerPubPage(),

};