import 'package:flutter/material.dart';

class MyImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("图片展示"),
      ),
      body: new Center(
        child: new Image(
          image: new AssetImage('images/alipay.png'),
        ),
      ),
    );
  }
}