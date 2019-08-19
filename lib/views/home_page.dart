import 'package:flutter/material.dart';
// import '../utils/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _textList =
      "在 Flutter 中，一切的显示都是 Widget 。Widget 是一切的基础，作为响应式的渲染，类似 MVVM 的实现机制。我们可以通过修改数据，再用setState 设置数据，Flutter 会自动通过绑定的数据更新 Widget 。";

  Widget _renderBottomIconList(IconData icon, String text) {
    return Expanded(
      flex: 1,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(6.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    icon,
                    size: 16.0,
                    color: Colors.grey,
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text(
                    text,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _renderCardList(name) {
    return Card(
      child: FlatButton(
        onPressed: () {
          print('点击了卡片');
        },
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                alignment: Alignment.centerLeft,
              ),
              Row(
                children: <Widget>[
                  _renderBottomIconList(Icons.bookmark, "118"),
                  _renderBottomIconList(Icons.equalizer, "84"),
                  _renderBottomIconList(Icons.sort, "22"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(4.0),
      children: <Widget>[
        _renderCardList(_textList),
        _renderCardList(_textList),
        _renderCardList(_textList),
        _renderCardList(_textList),
        _renderCardList(_textList),
        _renderCardList(_textList),
        _renderCardList(_textList),
        _renderCardList(_textList),
        _renderCardList(_textList),
        _renderCardList(_textList),
        _renderCardList(_textList),
        _renderCardList(_textList),
        _renderCardList(_textList),
      ],
    );
  }
}
