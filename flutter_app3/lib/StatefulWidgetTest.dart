import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdjustNumScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new AdjustNum();
  }
}

class AdjustNum extends StatefulWidget {
  @override
  AdjustNumState createState() => AdjustNumState();
}

class AdjustNumState extends State<AdjustNum> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('有状态组件'),
      ),
      //居中布局
      body: Center(
        child: Column(
          //主轴垂直居中对齐
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',//绑定计数器的值
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,//按下+号按钮调用自增函数
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
