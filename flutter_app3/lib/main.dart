import 'package:flutter/material.dart';

import 'SecondScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '导航页面示例',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
            '导航页面示例'
        ),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text(
              '查看商品详情页'
          ),
          onPressed: (){
            Navigator.push(+
                context,
                new MaterialPageRoute(builder: (context) => new SecondScreen())
            );
          },
        ),
      ),
    );
  }
}