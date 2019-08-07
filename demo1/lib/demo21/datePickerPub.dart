import 'package:flutter/material.dart';

// 第三方日期组件

class DatePickerPubPage extends StatefulWidget {
  DatePickerPubPage({Key key}) : super(key: key);

  _DatePickerPubPageState createState() => _DatePickerPubPageState();
}

class _DatePickerPubPageState extends State<DatePickerPubPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第三方日期组件'),
      ),
      body: Text('第三方日期组件'),
    );
  }
}