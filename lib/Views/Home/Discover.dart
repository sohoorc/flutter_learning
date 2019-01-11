import 'package:flutter/material.dart';
import '../../global.config.dart';

class Discover extends StatefulWidget {
  _DiscoverState createState() => new _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  // final titleIconColor = Colors.white54;

  Widget searchBar() {
    return Container(
        height: 30,
        child: new Row(
          children: <Widget>[
            new Expanded(
                child: new FlatButton.icon(
              onPressed: () {
                Navigator.of(context)
                    .push(new MaterialPageRoute(builder: (context) {
                  // return new SearchPage();
                }));
              },
              icon: new Icon(Icons.search,
                  color: GlobalConfig.fontColor, size: 20.0),
              label: new Text(
                "我的滑板鞋 庞麦郎",
                style: new TextStyle(color: GlobalConfig.fontColor),
              ),
            )),
          ],
        ),
        // Container样式描述
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white24,
        ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.mic_none,
                size: 24,
                color: Colors.white54,
              ),
              tooltip: 'Air it',
              onPressed: () => {},
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.music_video,
                  size: 24,
                  color: Colors.white54,
                ),
                tooltip: 'Air it',
                onPressed: () => {},
              ),
            ],
            title: searchBar()),
      ),
      theme: GlobalConfig.themeData,
    );
  }
}
