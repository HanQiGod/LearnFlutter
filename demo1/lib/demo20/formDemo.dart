import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  FormDemoPage({Key key}) : super(key: key);

  _FormDemoPageState createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {

  String username;
  int sex = 1;
  String info;
  List hobby = [
    {
      "checked": true,
      "title": "吃饭",
    },
    {
      "checked": false,
      "title": "睡觉",
    },
    {
      "checked": true,
      "title": "写代码",
    },
  ];

  List<Widget> _getHobby(){

    List<Widget> tempList = [];
    for (var i = 0; i < this.hobby.length; i++) {
      tempList.add(
        Row(
          children: <Widget>[
            Text(this.hobby[i]['title'] + ":"),
        Checkbox(
          value: this.hobby[i]['checked'],
          onChanged: (v){
            setState(() {
              this.hobby[i]['checked'] = v;
            });
          },
        )
          ],
        )
      );
    }
    return tempList;
  }

  // 抽离相同方法
  void _sexChanged(value){
    setState(() {
      this.sex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('完善信息'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[

            // 昵称
            TextField(
              decoration: InputDecoration(
                hintText: '输入用户信息',
              ),
              onChanged: (v){
                setState(() {
                  this.username = v;
                });
              },
            ),
            SizedBox(height: 20,),

            // 性别
            Row(

              children: <Widget>[
                Text('男'),
                Radio(
                  value: 1,
                  groupValue: this.sex,
                  onChanged: this._sexChanged,
                ),
                SizedBox(width: 40,),
                Text('女'),
                Radio(
                  value: 2,
                  groupValue: this.sex,
                  onChanged: this._sexChanged,
                )
              ],
            ),
            SizedBox(height: 20,),

            // 爱好
            Column(
              children: this._getHobby(),
            ),
            SizedBox(height: 20,),

            // 描述
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: '个性签名',
                border: OutlineInputBorder(),  // 设置输入框的框
              ),
              onChanged: (v){
                setState(() {
                  this.info = v;
                });
              },
            ),

            SizedBox(height: 40,),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text('提交信息'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  print(this.username);
                  print(this.sex == 1 ? "男" : "女");
                  print(this.hobby);
                  print(this.info);
                },
              ),
            )

          ],
        ),
      ),
    );
  }
}