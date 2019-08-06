import 'package:flutter/material.dart';


class CheckBoxDemoPage extends StatefulWidget {
  CheckBoxDemoPage({Key key}) : super(key: key);

  _CheckBoxDemoPageState createState() => _CheckBoxDemoPageState();
}

class _CheckBoxDemoPageState extends State<CheckBoxDemoPage> {

  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBoxDemo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Row(
            children: <Widget>[

              Checkbox(
                value: this.flag,
                activeColor: Colors.red, // 设置选中的颜色
                onChanged: (value){
                  setState(() {
                    this.flag = value;
                  });
                },
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: <Widget>[

              Text(this.flag ? "选中" : "未选择"),
            ],
          ),
          SizedBox(height: 40,),
          CheckboxListTile(
            value: this.flag,
            activeColor: Colors.red,
            title: Text('标题'),
            subtitle: Text('二级标题'),
            onChanged: (value){
              setState(() {
                this.flag = value;
              });
            },
          ),
          Divider(),
          CheckboxListTile(
            value: this.flag,
            activeColor: Colors.red,
            title: Text('标题'),
            subtitle: Text('二级标题'),
            secondary: Icon(Icons.home),
            onChanged: (value){
              setState(() {
                this.flag = value;
              });
            },
          )
        ],
      ),
    );
  }
}