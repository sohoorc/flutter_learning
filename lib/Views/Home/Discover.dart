import 'package:flutter/material.dart';
import '../../global.config.dart';
class Discover extends StatefulWidget {
  _DiscoverState createState() => new _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('发现'),
        ),
      ),
      theme: GlobalConfig.themeData,
    );
  }
}
