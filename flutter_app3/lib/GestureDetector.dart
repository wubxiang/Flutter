import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class MyGestureDetector extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('按下处理demo'),
      ),
      body: new Center(
        child: new MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new prefix0.GestureDetector(
      onTap: (){
        //底部消息揭示
        final snackBar = new SnackBar(content: new Text('你已按下'),);
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: new Container(
        padding: new EdgeInsets.all(12.0),
        decoration:  new BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: new BorderRadius.circular(10.0),
        ),
        child: new Text('测试按钮'),
      ),
    );
  }
}