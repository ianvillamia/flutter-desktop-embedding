import 'package:flutter/material.dart';
import 'package:easy_dialog/easy_dialog.dart';
import 'package:example_flutter/navbar.dart';

class Reports extends StatefulWidget {
  @override
  _ReportsState createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          width: width,
          height: height,
          color: Colors.grey[200],
        ),
        Row(
          children: <Widget>[
            Container(
              width: width * .20,
              child: NavBarDrawer(),
            ),
         Container(
        width: queryData.size.width / 1.25,
        height: queryData.size.height,
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Container(
            width: queryData.size.width,
            height: queryData.size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          )
        ))
          ],
        )
      ]),
    );
  }
}