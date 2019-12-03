import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{

  // 重写build方法来构建一个组件，build即为创建一个widget的意思，返回值也是一个widget
  @override
  Widget build(BuildContext context) {
    //MaterialApp 应用组件，代表使用Material Design风格的应用
    return new MaterialApp(
      //应用程序的标题，Android 出现在任务管理器的程序快照之上，iOS 出现在程序切换管理器中
      title: 'Welcome to Flutter',
      //home 这是一个widget对象，用来定义当前应用打开时所显示的界面
      //Scaffold 脚手架组件，实现了基本的Material Design 布局
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          child: new Text('Hello World'),
        ),
      ),
    );
  }
}