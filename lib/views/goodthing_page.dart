import 'package:flutter/material.dart';

class GoodThingPage extends StatefulWidget {
  GoodThingPage({Key key}) : super(key: key);

  _GoodThingPageState createState() => _GoodThingPageState();
}

class _GoodThingPageState extends State<GoodThingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('好推荐'),
    );
  }
}