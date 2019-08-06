import 'package:flutter/material.dart';


class TextFieldDemoPage extends StatefulWidget {
  TextFieldDemoPage({Key key}) : super(key: key);

  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {

  var _username = new TextEditingController();  // 表示初始化的时候给表单赋值
  var _password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    this._username.text = '初始值';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单演示页面'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        // child: TextDem(),  // 表单演示Demo
        child: Column(        // 获取表单输入Demo
          children: <Widget>[

            TextField(
              decoration: InputDecoration(
                hintText: '请输入用户名'
              ),
              controller: this._username,
              onChanged: (value){ // 文本框内值改变时调用
                setState(() {
                  this._username.text = value;
                });
              },
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: '请输入密码'
              ),
              onChanged: (value){ 
                setState(() {
                  this._password = value;
                });
              },
            ),
            SizedBox(height: 40,),
            Container(
              width: double.infinity, // 设置 container 是自适应的
              height: 40,
              child: RaisedButton(
                child: Text('登录'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  print(this._username.text);
                  print(this._password);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}



class TextDem extends StatelessWidget {
  const TextDem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

          children: <Widget>[

            TextField(),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                hintText: '请输入搜索的内容', // 类似 placeholder 
                border: OutlineInputBorder(), // 设置边框
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              maxLines: 4, // 设置多行文本框，最大 4 行
              decoration: InputDecoration(
                hintText: '多行文本框',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true, // 设置密码是否为明码
              decoration: InputDecoration(
                hintText: '密码框', 
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '用户名'
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '密码'
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.people),
                hintText: '请输入用户名'
              ),
            ),
          ],
        );
  }
}