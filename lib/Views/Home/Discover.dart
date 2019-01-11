import 'package:flutter/material.dart';
import '../../global.config.dart';

class Discover extends StatefulWidget {
  _DiscoverState createState() => new _DiscoverState();
}

class _DiscoverState extends State<Discover>
    with SingleTickerProviderStateMixin {
  // final titleIconColor = Colors.white54;
  TabController _tabController;
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
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
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
          title: searchBar(),
          bottom: TabBar(
            controller: _tabController,
            indicatorPadding: kTabLabelPadding,
            // labelColor:
            //     GlobalConfig.dark == true ? new Color(0xFF63FDD9) : Colors.blue,
            // unselectedLabelColor:
            //     GlobalConfig.dark == true ? Colors.white : Colors.black,
            tabs: [
              Tab(text: "个性推荐"),
              Tab(text: "主播电台"),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[Text('个性推荐'), Text('主播电台')],
        ),
      ),
      theme: GlobalConfig.themeData,
    );
  }
}
