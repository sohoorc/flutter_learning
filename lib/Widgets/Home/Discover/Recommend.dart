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
              children: <Widget>[BannerPage(), RecPlayLists(), NewMusicLists()],
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
      "num": "1万",
      "title": "经典老歌，百听不厌",
      "imgUrl":
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547377251049&di=6f72ce451c69cf73e6e06686124e386f&imgtype=0&src=http%3A%2F%2Fimg.bimg.126.net%2Fphoto%2FZZ5EGyuUCp9hBPk6_s4Ehg%3D%3D%2F5727171351132208489.jpg"
    },
    {
      "num": "13万",
      "title": "富强、民主、和谐、自由、平等、爱国",
      "imgUrl":
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547377251049&di=6f72ce451c69cf73e6e06686124e386f&imgtype=0&src=http%3A%2F%2Fimg.bimg.126.net%2Fphoto%2FZZ5EGyuUCp9hBPk6_s4Ehg%3D%3D%2F5727171351132208489.jpg"
    },
    {
      "num": "12万",
      "title": "绿水青山就是金山银山",
      "imgUrl":
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547377251049&di=6f72ce451c69cf73e6e06686124e386f&imgtype=0&src=http%3A%2F%2Fimg.bimg.126.net%2Fphoto%2FZZ5EGyuUCp9hBPk6_s4Ehg%3D%3D%2F5727171351132208489.jpg"
    },
    {
      "num": "33万",
      "title": "歌唱祖国，谱写美好的明天",
      "imgUrl":
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547377251049&di=6f72ce451c69cf73e6e06686124e386f&imgtype=0&src=http%3A%2F%2Fimg.bimg.126.net%2Fphoto%2FZZ5EGyuUCp9hBPk6_s4Ehg%3D%3D%2F5727171351132208489.jpg"
    },
    {
      "num": "1023万",
      "title": "回忆童年",
      "imgUrl":
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547377251049&di=6f72ce451c69cf73e6e06686124e386f&imgtype=0&src=http%3A%2F%2Fimg.bimg.126.net%2Fphoto%2FZZ5EGyuUCp9hBPk6_s4Ehg%3D%3D%2F5727171351132208489.jpg"
    },
    {
      "num": "123万",
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

  // 点击推荐tab
  void _onTabItem() {
    print(123);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> playLists = [];
    double itemWidth = (MediaQuery.of(context).size.width - 8) * 0.32;
    double itemHeight = (MediaQuery.of(context).size.width - 8) * 0.24;
    // TODO: implement build
    // 循环生成推荐列表
    for (int i = 0; i < playListsData.length; i++) {
      playLists.add(GestureDetector(
        onTap: _onTabItem,
        child: Container(
          width: itemWidth,
          child: Column(children: <Widget>[
            Stack(
              alignment: Alignment.topRight,
              children: <Widget>[
                Image.network(
                  playListsData[i]["imgUrl"],
                  height: itemHeight,
                  width: itemWidth,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Icon(
                      Icons.headset,
                      size: 12,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4, right: 6),
                      child: Text(
                        playListsData[i]["num"],
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Text(playListsData[i]["title"],
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12))
          ]),
        ),
      ));
    }

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              width: 100,
              child: FlatButton(
                onPressed: () => {},
                padding: EdgeInsets.all(0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '推荐歌单',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 14)
                  ],
                ),
              )),
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

/**
 * 最新音乐
 */
class NewMusicLists extends StatefulWidget {
  _NewMusicListsState createState() => new _NewMusicListsState();
}

class _NewMusicListsState extends State<NewMusicLists> {
  static List playListsData = [
    {
      "title": "最新音乐",
      "imgUrl":
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547390881581&di=dfa83130693538f8b5ab6f8dadbfde07&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fa8773912b31bb0516663e40d3c7adab44aede054.jpg"
    },
    {
      "title": "发如雪",
      "author": "周杰伦",
      "imgUrl":
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547985779&di=858a2177a7e35824ddbd2811f21c97f1&imgtype=jpg&er=1&src=http%3A%2F%2Fgss0.baidu.com%2F-vo3dSag_xI4khGko9WTAnF6hhy%2Fzhidao%2Fpic%2Fitem%2F024f78f0f736afc384e6e5c6bf19ebc4b64512af.jpg"
    },
    {
      "author": "周杰伦",
      "title": "夜的第七章",
      "imgUrl":
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547391420710&di=bd9d0b745f7fe2ed7db8276a2b4b2b41&imgtype=0&src=http%3A%2F%2Fs9.rr.itc.cn%2Fr%2FwapChange%2F20167_17_3%2Fa07qpq02912315556310.jpg"
    },
    {
      "title": "最新专辑",
      "imgUrl":
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547390881581&di=dfa83130693538f8b5ab6f8dadbfde07&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2Fa8773912b31bb0516663e40d3c7adab44aede054.jpg"
    },
    {
      "title": "后青春期的诗",
      "imgUrl":
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547391214769&di=1f33c104bfbbab9028c6e7455a96c098&imgtype=0&src=http%3A%2F%2Fs10.sinaimg.cn%2Fbmiddle%2F4939a45dg600c13c83989"
    },
    {
      "title": "像我这样的人",
      "imgUrl":
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547391281879&di=84189e56bd75e2b250e34519c8b3303b&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20181106%2F879ba9a9db554001826e7890c6ea3715.jpeg"
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  // 点击推荐tab
  void _onTabItem() {
    print(123);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> playLists = [];
    double itemWidth = (MediaQuery.of(context).size.width - 8) * 0.32;
    double itemHeight = (MediaQuery.of(context).size.width - 8) * 0.24;
    // TODO: implement build
    // 循环生成推荐列表
    for (int i = 0; i < playListsData.length; i++) {
      playLists.add(GestureDetector(
        onTap: _onTabItem,
        child: Container(
          width: itemWidth,
          child: Column(children: <Widget>[
            Image.network(
              playListsData[i]["imgUrl"],
              height: itemHeight,
              width: itemWidth,
            ),
            Text(playListsData[i]["title"],
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12))
          ]),
        ),
      ));
    }

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              width: 100,
              child: FlatButton(
                onPressed: () => {},
                padding: EdgeInsets.all(0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '最新音乐',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 14)
                  ],
                ),
              )),
          // 推荐歌单warp 通过container容器包裹为了能够让容器撑满横屏，使下方warp的alignment属性生效
          Container(
              width: MediaQuery.of(context).size.width - 8,
              padding: EdgeInsets.only(bottom: 10),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                runAlignment: WrapAlignment.spaceBetween,
                runSpacing: 10,
                children: playLists,
              ))
        ]);
  }
}
