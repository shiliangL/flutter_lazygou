import 'package:flutter/material.dart';

class MyCenter extends StatefulWidget {
  MyCenter({Key key}) : super(key: key);

  _MyCenterState createState() => _MyCenterState();
}

class _MyCenterState extends State<MyCenter> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child:Image.network('http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg'),
    );
  }
}