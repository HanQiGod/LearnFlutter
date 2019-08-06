import 'package:flutter/material.dart';


class ButtonDemoPage extends StatelessWidget {
  const ButtonDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮演示页面'),
        actions: <Widget>[

          // 图标按钮
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){
              print('图标按钮');
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              RaisedButton(
                child: Text('普通按钮'),
                onPressed: (){
                  print('普通按钮');
                },
              ),
              SizedBox(width: 5,),
              RaisedButton(
                child: Text('颜色按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  print('颜色按钮');
                },
              ),
              SizedBox(width: 5,),
              RaisedButton(
                child: Text('阴影按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 10, // 设置阴影效果
                onPressed: (){
                  print('阴影按钮');
                },
              ),
              SizedBox(width: 5,),
              RaisedButton.icon(
                icon: Icon(Icons.search),
                label: Text('图文按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                // onPressed: null,  // 禁用按钮点击
                onPressed: (){
                  print('图文按钮');
                },
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              // 设置按钮的宽高，只需要在按钮的外层添加一个 Container 容器即可设置
              Container(
                height: 50,
                width: 300,
                child: RaisedButton(
                  child: Text('设置按钮宽高'),
                  onPressed: (){
                    print('设置按钮宽高');
                  },
                ),
              )

            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              // 自适应按钮
              Expanded(
                child: Container(
                  height: 100,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    child: Text('自适应按钮'),
                    onPressed: (){
                      print('自适应按钮');
                    },
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              RaisedButton(
                child: Text('圆角按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder( // 设置圆角按钮
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: (){
                  print('圆角按钮');
                },
              ),
              SizedBox(width: 10,),
              Container(
                height: 100,
                width: 100,
                child: RaisedButton(
                child: Text('圆形按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                splashColor: Colors.red, // 设置按钮长按水波纹颜色
                shape: CircleBorder( // 设置圆形按钮
                  side: BorderSide(
                    color: Colors.white
                  )
                ),
                onPressed: (){
                  print('圆形按钮');
                },
              ),
              ),
              FlatButton(
                child: Text('扁平按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  print('扁平按钮');
                },
              ),
              SizedBox(width: 10,),
              OutlineButton(
                child: Text('线宽按钮'),
                color: Colors.blue, // 设置没效果
                textColor: Colors.red,
                onPressed: (){
                  print('线宽按钮');
                },
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Expanded(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.all(10),
                  child: OutlineButton(
                  child: Text('自适应 OutlineButton 按钮'),
                  onPressed: (){
                    print('自适应 OutlineButton 按钮');
                  },
                ),
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              // 按钮组
              ButtonBar(
                children: <Widget>[

                  RaisedButton(
                    child: Text('登录'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: (){
                      print('登录');
                    },
                  ),
                  RaisedButton(
                    child: Text('注册'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: (){
                      print('注册');
                    },
                  ),
                  MyButton(
                    text: '自定义按钮',
                    height: 100.0,
                    width: 160.0,
                    pressed: (){
                      print('自定义按钮');
                    },
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}



// 自定义按钮组件

class MyButton extends StatelessWidget {

  final text;
  final pressed;
  final double height; // 指定类型
  final double width;

  const MyButton({this.text = '', this.pressed = null, this.height = 30.0, this.width = 80.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
      child: Text(this.text),
      onPressed: this.pressed,
    ),
    );
  }
}