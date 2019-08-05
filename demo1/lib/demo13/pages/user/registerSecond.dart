import 'package:flutter/material.dart';

class RegisterSecondPage extends StatelessWidget {
  const RegisterSecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二步 - 验证码'),
      ),
      body: Center(
        child: Column(

          children: <Widget>[

            SizedBox(height: 40,),
            Text('输入验证码'),
            SizedBox(height: 40,),
            RaisedButton(
              child: Text('下一步'),
              onPressed: () {

                // 普通路由实现
                Navigator.pushNamed(context, '/registerThird');

                // 替换路由
                // Navigator.of(context).pushReplacementNamed('/registerThird');
              },
            )
          ],
        ),
      ),
    );
  }
}