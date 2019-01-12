import 'package:flutter/material.dart';
import './../../../global.config.dart';

class IconItem extends StatelessWidget {
  IconItem(
      {Key key,
      @required this.title,
      @required this.icon,
      @required this.navPath});
  final title;
  final String navPath;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
            decoration: BoxDecoration(
              color: GlobalConfig.themeData.primaryColor,
              borderRadius: BorderRadius.circular(45),
            ),
            child: IconButton(
              // alignment: Alignment.topLeft,
              padding: EdgeInsets.all(0),
              icon: Icon(
                icon,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () => {},
            )),
        Text(
          title,
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          
          style: TextStyle(fontSize: 12, height: 1.25,color: Colors.black54),
        )
      ],
    );
  }
}
