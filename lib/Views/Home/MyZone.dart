import 'package:flutter/material.dart';
import '../../global.config.dart';

class MyZone extends StatefulWidget {
  _MyZoneState createState() => new _MyZoneState();
}

class _MyZoneState extends State<MyZone> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('我的'),
        ),
      ),
      theme: GlobalConfig.themeData,
    );
  }
}
