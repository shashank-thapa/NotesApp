import 'package:flutter/material.dart';
import 'package:noteapp/models/global.dart';

class HomeNotes extends StatelessWidget {
  final String title, subtext,keyValue;
  HomeNotes({this.keyValue, this.title, this.subtext});
  @override
  Widget build(BuildContext context) {
    return Container(
        key: Key(keyValue),
        margin: EdgeInsets.only(bottom: 10, right: 10, left: 20),
        padding: EdgeInsets.only(top: 35, left: 20),
        height: 150,
        decoration: BoxDecoration(
            color: darkGreyColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              new BoxShadow(
                  color: Colors.black.withOpacity(0.5), blurRadius: 10.0)
            ]),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: notecardTitleStyle,
              ),
            ),
          ],
        ));
  }
}
