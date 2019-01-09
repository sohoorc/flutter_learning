import 'package:flutter/material.dart';
import '../../global.config.dart';
class Account extends StatefulWidget {
  _AccountState createState() => new _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('账号'),
        ),
      ),
      theme: GlobalConfig.themeData,
    );
  }
}
