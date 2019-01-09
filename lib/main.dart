import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      routes: {
        "new_page": (context) => NewPage(),
        "layout_test": (context) => LayoutTestPage()
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10000;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '哈哈哈 测试' * 6,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              textColor: Colors.red,
              child: new Text('点我跳转到新的导航'),
              onPressed: () {
                Navigator.pushNamed(context, 'new_page');
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class NewPage extends StatefulWidget {
  NewPage({Key key, this.initVal: 0});

  final int initVal;

  @override
  _NewPageState createState() => new _NewPageState();
}

class _NewPageState extends State<NewPage> {
  int _count;
  bool _switchSelected = true;
  bool _checkboxSelected = true;

  @override
  void initState() {
    super.initState();
    //初始化状态
    _count = widget.initVal;
    print("状态初始化：initState");
  }

  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text('title'),
      ),
      body: new Center(
          child: Column(
        children: <Widget>[
          Text('点击返回'),
          FlatButton(
            child: Text(
              '点击返回',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 20,
              ),
            ),
            // textColor: Colors.red,
            onPressed: () {
              Navigator.pop(context, () {});
            },
          ),
          Text('点击下方自增'),
          FlatButton(
            child: Text('$_count'),
            textColor: Colors.red,
            onPressed: () => setState(() => ++_count),
          ),
          Image.asset(
            'images/ios.png',
            width: 100.0,
          ),
          Image.network(
            'http://t2.hddhhn.com/uploads/tu/201610/198/kytlblghckn.jpg',
            width: 100.1,
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.difference,
            color: Colors.red,
          ),
          Switch(
            value: _switchSelected, //当前状态
            onChanged: (value) {
              //重新构建页面
              setState(() {
                _switchSelected = value;
              });
            },
          ),
          Checkbox(
            value: _checkboxSelected,
            activeColor: Colors.red, //选中时的颜色
            onChanged: (value) {
              setState(() {
                _checkboxSelected = value;
              });
            },
          ),
          Row(
            // 文字横向对其方式 start|center|end 在MainAxisSize.min 时不生效 相当于web开发中的文本元素 没有铺满一行，所以无法设置左中右的textAlign
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          Row(
            // 横轴的横向排列，是从左开始还是从右开始
            textDirection: TextDirection.ltr,
            // 横向对其方式 只有在MainAxisSize.max时生效
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          Row(
            // 纵轴（垂直）方向的排列
            verticalDirection: VerticalDirection.up,
            // 纵轴的对其方式，参考系为verticalDirection
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                " hello world ",
                style: TextStyle(fontSize: 30.0),
              ),
              Text(" I am Jack "),
            ],
          ),
          FlatButton(
            child: Text('去布局练习页'),
            onPressed: () => Navigator.pushNamed(context, 'layout_test'),
          )
        ],
      )),
    );
  }

  @override
  void didUpdateWidget(NewPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("当state移除时：deactive");
  }

  @override
  void dispose() {
    super.dispose();
    print("点state永久移除时：dispose 类似react unmount");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("开发模式中，当热重载后：reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("当state的依赖发生变化时调用：didChangeDependencies");
  }
}

class LayoutTestPage extends StatefulWidget {
  _LayoutTestPageState createState() => new _LayoutTestPageState();
}

class _LayoutTestPageState extends State<LayoutTestPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('布局练习'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[Text('哈哈哈')],
        ),
      ),
    );
  }
}
