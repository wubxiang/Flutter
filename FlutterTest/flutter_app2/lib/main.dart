import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome Flutter'),
        ),
        body: new Center(
          child: Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.white,
              border: new Border.all(
                color: Colors.grey,
                width: 8.0,
              ),
              borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
            ),
            child: Text(
              'Flutter',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28.0),
            ),
          )
        ),
      ),
    );
  }
}


