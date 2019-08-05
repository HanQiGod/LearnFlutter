import 'package:flutter/material.dart';

class ProductInfoPage extends StatefulWidget {
  ProductInfoPage({Key key}) : super(key: key);

  _ProductInfoPageState createState() => _ProductInfoPageState();
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情'),
      ),
      body: Text('商品 id = ' + args),
    );
  }
}
