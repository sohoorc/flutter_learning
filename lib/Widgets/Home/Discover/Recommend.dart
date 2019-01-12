import 'package:flutter/material.dart';
import './../../../global.config.dart';
import './Banner.dart';

class Recommend extends StatefulWidget {
  _RecommendState createState() => new _RecommendState();
}

class _RecommendState extends State<Recommend> {
  Future<Null> _refresh() async {
    // _dataList.clear();
    // await _loadFirstListData();
    return;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: RefreshIndicator(
            backgroundColor: GlobalConfig.themeData.primaryColor,
            onRefresh: _refresh,
            child: ListView(
              padding: EdgeInsets.only(left: 4, right: 4),
              children: <Widget>[
                BannerPage(),
                Text('1'),
                Text('1'),
                Text('1'),
                Text('1'),
                Text('1'),
              ],
            )));
  }
}
