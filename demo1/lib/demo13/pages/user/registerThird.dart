import 'package:demo1/demo13/pages/tabs.dart';
import 'package:flutter/material.dart';

class RegisterThirdPage extends StatelessWidget {
  const RegisterThirdPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第三步 - 完成注册'),
      ),
      body: Center(
        child: Column(

          children: <Widget>[

            SizedBox(height: 40,),
            Text('输入密码完成注册'),
            SizedBox(height: 40,),
            RaisedButton(
              child: Text('完成注册'),
              onPressed: () {

                // 使用普通路由，用下面代码返回根路由
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => Taps(index: 2,)),
                  (route) => route == null
                );

                // 使用路由转换，用下面代码返回根路由
                // 由于之前的页面都是使用的替换路由，所以可直接使用 pop 返回根路由
                // Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}