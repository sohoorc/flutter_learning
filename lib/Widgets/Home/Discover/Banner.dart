/**
 * home-》个性推荐-》banner
 */
import 'package:flutter/material.dart';
import './../../../global.config.dart';
import './IconItem.dart';

class BannerPage extends StatefulWidget {
  _BannerState createState() => new _BannerState();
}

class _BannerState extends State<BannerPage> {
  static List iconListsData = [
    {'title': '私人FM', 'icon': Icons.radio, 'navPath': '1'},
    {'title': '每日推荐', 'icon': Icons.date_range, 'navPath': '1'},
    {'title': '歌单', 'icon': Icons.library_music, 'navPath': '1'},
    {'title': '排行榜', 'icon': Icons.insert_chart, 'navPath': '1'},
  ];

  List<Widget> iconLists = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for (int i = 0; i < iconListsData.length; i++) {
      String title = iconListsData[i]["title"];
      IconData icon = iconListsData[i]["icon"];
      String navPath = iconListsData[i]["navPath"];
      iconLists.add(new IconItem(title: title, icon: icon, navPath: navPath));
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      // height: 300,
      child: Column(
        children: <Widget>[
          Container(
            height: 130,
            child: Text(
              '轮播',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            alignment: Alignment.center,
            decoration:
                BoxDecoration(color: GlobalConfig.themeData.primaryColor),
                margin: EdgeInsets.only(top:5,left:3,right: 3,bottom:5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: iconLists,
          )
        ],
      ),
    );
  }
}
