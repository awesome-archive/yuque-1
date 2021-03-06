import 'package:flutter/material.dart';
import 'package:yuque/config/theme.dart';

class GroupCell extends StatelessWidget {

  final VoidCallback onPressed;
  final ClipOval iconUrl;
  final Color iconColor;
  final String title;
  final String doctitle;

  GroupCell({this.iconUrl, this.iconColor, this.title, this.doctitle, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 72,
              padding: EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(right: 5.0),
                    child: CircleAvatar(
                      radius: 35.0,
                      backgroundColor: this.iconColor,
                      child: this.iconUrl,
                    )
                  ),
                  Column(                                    //单条消息记录，昵称和消息内容垂直排列
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(this.title, style: TextStyle(color: YQColor.grey2, fontSize: 18)),
                      Container(
                        margin: EdgeInsets.only(top: 4.0),
                        child: Text(this.doctitle, style: TextStyle(color: YQColor.grey4, fontSize: 16),),                    //消息文字
                      ),
                    ],
                  ),
                ],
              )
            ),
            Container(
              height: 1,
              color: YQColor.grey7,
              margin: EdgeInsets.only(left: 86),
            ),
          ],
        )
      )
    );
  }
}