import 'package:flutter/material.dart';


class RadioDemoPage extends StatefulWidget {
  RadioDemoPage({Key key}) : super(key: key);

  _RadioDemoPageState createState() => _RadioDemoPageState();
}

class _RadioDemoPageState extends State<RadioDemoPage> {

  int sex = 1;

  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[

            // Row(
            //   children: <Widget>[
                
            //     Text('男：'),
            //     Radio(
            //       value: 1, // 如果 value 的值和 groupValue 的值相等时，此按钮选中
            //       onChanged: (value){
            //         setState(() {
            //           this.sex = value;
            //         });
            //       },
            //       groupValue: this.sex, // radio 中 groupValue 相等时，属于同一个组
            //     ),
            //     SizedBox(width: 30,),
            //     Text('女：'),
            //     Radio(
            //       value: 2,
            //       onChanged: (value){
            //         setState(() {
            //           this.sex = value;
            //         });
            //       },
            //       groupValue: this.sex,
            //     )
            //   ],
            // ),
            // Row(
            //   children: <Widget>[
            //     Text(this.sex == 1 ? "男" : "女"),
            //   ],
            // ),
            SizedBox(height: 40,),
            RadioListTile(
              value: 1,
              onChanged: (value){
                setState(() {
                  this.sex = value;
                });
              },
              groupValue: this.sex,
              title: Text('标题'),
              subtitle: Text('二级标题'),
              secondary: Image.network('https://www.itying.com/images/flutter/3.png'),
              selected: this.sex == 1, // 设置选中文字高亮
            ),
            RadioListTile(
              value: 2,
              onChanged: (value){
                setState(() {
                  this.sex = value;
                });
              },
              groupValue: this.sex,
              title: Text('标题'),
              subtitle: Text('二级标题'),
              secondary: Icon(Icons.home),
              selected: this.sex == 2, // 设置选中文字高亮
            ),
            SizedBox(height: 40,),
            Switch(
              value: this.flag,
              onChanged: (value){
                setState(() {
                  this.flag = value;
                });
              },
            ),
            Text(this.flag ? "打开" : "关闭")
          ],
        ),
      ),
    );
  }
}


