import 'package:flutter/material.dart';

import 'package:date_format/date_format.dart'; // 第三方日期库

// 系统日期组件

class DatePickerPage extends StatefulWidget {
  DatePickerPage({Key key}) : super(key: key);

  _DatePickerPageState createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {

  // 获取当前日期
  DateTime _nowDate = DateTime.now();

  // 获取当前的时间
  var _nowTime = TimeOfDay(hour: 12, minute: 30,);

  // 日期选择
  _showDatePicker() async {
    // 第一种获取选择日期返回值方法；获取异步方法中的数据
    // showDatePicker(
    //   context: context,
    //   initialDate: this._nowDate,
    //   firstDate: DateTime(1980),
    //   lastDate: DateTime(2100),
    // ).then((result){
    //   print(result);
    // });

    // 第二种办法获取异步方法中的数据
    var result = await showDatePicker(
      context: context,
      initialDate: this._nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100),
      locale: Locale('zh'), // 配置语言：中文/英文
    );
    print(result);

    setState(() {
      this._nowDate = result;
    });
  }

  // 时间选择
  _showTimePicker() async {

    var result = await showTimePicker(
      context: context,
      initialTime: this._nowTime,
    );

    setState(() {
      this._nowTime = result;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // 获取当前时间
    // var now = DateTime.now();

    // print(this.now); //2019-08-07 09:32:28.479883

    // 把当前日期转化成时间戳
    // print(this.now.millisecondsSinceEpoch); // 1565141651327

    // 将时间戳转化成日期
    // print(DateTime.fromMillisecondsSinceEpoch(1565141651327)); //2019-08-07 09:34:11.327

    // 利用第三方转化成这样格式： 2019-08-07  2019年08月07日  2019/08/07
    // print(formatDate(DateTime.now(), [yyyy, '-', mm, '-', dd]));
    // print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd, '日']));
    // print(formatDate(DateTime.now(), [yyyy, '/', mm, '/', dd]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DatePicker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // 日期选择实现
              InkWell(
                // InkWell 组件可以当做是一个 Button 组件，可以添加点击事件
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('${formatDate(this._nowDate, [
                      yyyy,
                      '-',
                      mm,
                      '-',
                      dd
                    ])}'),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: this._showDatePicker,
              ),

              SizedBox(
                height: 40,
              ),

              // 时间选择实现
              InkWell(
                // InkWell 组件可以当做是一个 Button 组件，可以添加点击事件
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('${this._nowTime.format(context)}'),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: this._showTimePicker,
              ),
            ],
          )
        ],
      ),
    );
  }
}
