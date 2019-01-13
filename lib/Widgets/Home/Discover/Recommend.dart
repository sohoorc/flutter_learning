/**
 * 个性推荐
 */
import 'package:flutter/material.dart';
import './../../../global.config.dart';
import './Banner.dart';

/**
 * 个性推荐页面
 */
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
                RecPlayLists(),
                Text('1'),
                Text('1'),
                Text('1'),
                Text('1'),
              ],
            )));
  }
}

/**
 * 推荐歌单
 */
class RecPlayLists extends StatefulWidget {
  _RecPlayListsState createState() => new _RecPlayListsState();
}

class _RecPlayListsState extends State<RecPlayLists> {
  static List playListsData = [
    {
      "title": "经典老歌，百听不厌",
      "imgUrl":
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547377251049&di=6f72ce451c69cf73e6e06686124e386f&imgtype=0&src=http%3A%2F%2Fimg.bimg.126.net%2Fphoto%2FZZ5EGyuUCp9hBPk6_s4Ehg%3D%3D%2F5727171351132208489.jpg"
    },
    {
      "title": "富强、民主、和谐、自由、平等、爱国",
      "imgUrl":
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547377251049&di=6f72ce451c69cf73e6e06686124e386f&imgtype=0&src=http%3A%2F%2Fimg.bimg.126.net%2Fphoto%2FZZ5EGyuUCp9hBPk6_s4Ehg%3D%3D%2F5727171351132208489.jpg"
    },
    {
      "title": "绿水青山就是金山银山",
      "imgUrl":
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547377251049&di=6f72ce451c69cf73e6e06686124e386f&imgtype=0&src=http%3A%2F%2Fimg.bimg.126.net%2Fphoto%2FZZ5EGyuUCp9hBPk6_s4Ehg%3D%3D%2F5727171351132208489.jpg"
    },
    {
      "title": "歌唱祖国，谱写美好的明天",
      "imgUrl":
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547377251049&di=6f72ce451c69cf73e6e06686124e386f&imgtype=0&src=http%3A%2F%2Fimg.bimg.126.net%2Fphoto%2FZZ5EGyuUCp9hBPk6_s4Ehg%3D%3D%2F5727171351132208489.jpg"
    },
    {
      "title": "回忆童年",
      "imgUrl":
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547377251049&di=6f72ce451c69cf73e6e06686124e386f&imgtype=0&src=http%3A%2F%2Fimg.bimg.126.net%2Fphoto%2FZZ5EGyuUCp9hBPk6_s4Ehg%3D%3D%2F5727171351132208489.jpg"
    },
    {
      "title": "提神又醒脑",
      "imgUrl":
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547377251049&di=6f72ce451c69cf73e6e06686124e386f&imgtype=0&src=http%3A%2F%2Fimg.bimg.126.net%2Fphoto%2FZZ5EGyuUCp9hBPk6_s4Ehg%3D%3D%2F5727171351132208489.jpg"
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> playLists = [];
    double itemWidth = (MediaQuery.of(context).size.width - 8) * 0.32;
    // TODO: implement build
    for (int i = 0; i < playListsData.length; i++) {
      playLists.add(Container(
          width: itemWidth,
          child: Column(children: <Widget>[
            Image.network(playListsData[i]["imgUrl"]),
            Text(playListsData[i]["title"],
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12))
          ])));
    }
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              child: Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(children: <Widget>[
                    Text(
                      '推荐歌单',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 14)
                  ]))),
          // 推荐歌单warp 通过container容器包裹为了能够让容器撑满横屏，使下方warp的alignment属性生效
          Container(
              width: MediaQuery.of(context).size.width - 8,
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                runAlignment: WrapAlignment.spaceBetween,
                runSpacing: 10,
                children: playLists,
              ))
        ]);
  }
}
