import 'package:flutter/material.dart';

class MyCenter extends StatefulWidget {
  MyCenter({Key key}) : super(key: key);

  _MyCenterState createState() => _MyCenterState();
}

class _MyCenterState extends State<MyCenter> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('个人中心'),
    );
  }
}