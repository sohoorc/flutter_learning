import 'package:flutter/material.dart';
import '../../global.config.dart';
class Friend extends StatefulWidget {
  _FriendState createState() => new _FriendState();
}

class _FriendState extends State<Friend> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('朋友'),
        ),
      ),
      theme: GlobalConfig.themeData,
    );
  }
}
