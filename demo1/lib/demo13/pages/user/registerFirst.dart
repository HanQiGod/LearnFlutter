import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class ResgisterFirstPage extends StatelessWidget {
  const ResgisterFirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第一步 - 输入手机号'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              '这是注册的第一步，请输入手机号，然后点击下一步',
            ),
            SizedBox(height: 40,),
            RaisedButton(
              child: Text('下一步'),
              onPressed: () {
                
                // 普通路由实现
                Navigator.pushNamed(context, '/registerSecond');

                // 替换路由
                // Navigator.of(context).pushReplacementNamed('/registerSecond');
              },
            )
          ],
        ),
      ),
    );
  }
}
