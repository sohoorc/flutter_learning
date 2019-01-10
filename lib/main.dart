import 'package:flutter/material.dart';
import 'Views/Home/Discover.dart';
import 'Views/Home/MyZone.dart';
import 'Views/Home/Friend.dart';
import 'Views/Home/Account.dart';
import 'global.config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: GlobalConfig.themeData,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // MyHomePage({Key key, this.title}) : super(key: key);
  // final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final pages = [
    Discover(),
    MyZone(),
    Friend(),
    Account(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(pages.elementAt(_currentIndex));
    print('566');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // type: BottomNavigationBarType.shifting,
          fixedColor: Colors.red,
          currentIndex: _currentIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.youtube_searched_for,
                  // color: _bottomTextColor,
                ),
                title: Text(
                  '发现',
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.music_note,
                ),
                title: Text(
                  '我的',
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.supervisor_account,
                ),
                title: Text(
                  '朋友',
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box,
                ),
                title: Text(
                  '账号',
                )),
          ],
          onTap: _onItemTapped),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
