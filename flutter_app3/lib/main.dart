import 'package:flutter/material.dart';

import 'SecondScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // 重写build方法来构建一个组件，build即为创建一个widget的意思，返回值也是一个widget
  @override
  Widget build(BuildContext context) {
    //MaterialApp 应用组件，代表使用Material Design风格的应用
    return new MaterialApp(
      //应用程序的标题，Android 出现在任务管理器的程序快照之上，iOS 出现在程序切换管理器中
      title: '导航页面示例',
      //home 这是一个widget对象，用来定义当前应用打开时所显示的界面
      //Scaffold 脚手架组件，实现了基本的Material Design 布局
      theme: ThemeData(
        //主题颜色
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
            Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new SecondScreen())
            );
          },
        ),
      ),
    );
  }
}