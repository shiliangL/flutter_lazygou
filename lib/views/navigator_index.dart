import 'package:flutter/material.dart';
import './home_page.dart';
import './community_page.dart';
import './expand_page.dart';
import './my_center.dart';
import './goodthing_page.dart';
import '../utils/constants.dart';

class TabsNavigator extends StatefulWidget {
  @override
  _TabsNavigatorState createState() => _TabsNavigatorState();
}

class _TabsNavigatorState extends State<TabsNavigator> {
  int _currentIndex = 1;
  List _appBarText = ['首页', '好物', '拓展', '社区', '我的'];
  List _widgetPage = <Widget>[
    HomePage(),
    GoodThingPage(),
    ExpandPage(),
    CommunityPage(),
    MyCenter(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(AppColors.PrimaryColor),
        title: Text(_appBarText[_currentIndex]),
      ),
      body: PageView(children: [
        _widgetPage[_currentIndex],
      ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          if (_currentIndex == index) return;
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(icon: Icon(Icons.style), title: Text('好物')),
          BottomNavigationBarItem(icon: Icon(Icons.explore), title: Text('拓展')),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer), title: Text('社区')),
          BottomNavigationBarItem(icon: Icon(Icons.people), title: Text('我的')),
        ],
      ),
    );
  }
}
