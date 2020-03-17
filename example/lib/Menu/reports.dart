
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:example_flutter/Shared/navbutton.dart';
import 'package:example_flutter/Shared/navbar.dart';
import 'package:example_flutter/Menu/users.dart';
import 'package:example_flutter/Menu/lessons.dart';

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
              child: Container(
                width: width * .20,
                height: height,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    NavBarDrawer(),
                    horizontalLine(),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            buttons(context, Colors.red,Colors.white,Offset(1, 1), 2, 'Reports', Icons.dashboard, Reports()),
                            buttons(context,Colors.white,Colors.black,Offset(0, 0), 0,'Lessons', Icons.book, Lessons()),
                            buttons(context,Colors.white,Colors.black,Offset(0, 0), 0,'Users', Icons.people, Users()),
                          ],
                        )
                      ),
                  ],
                ),
              ),
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
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child:Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top:10),
                        height: queryData.size.height / 1.15 ,
                        child: ListView(
                          padding: EdgeInsets.all(10),
                          children: <Widget>[
                            GridView(
                          shrinkWrap: true,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: MediaQuery.of(context).size.width >= 1100 ? 3 : 
                            MediaQuery.of(context).size.width >= 600 ? 2 : 1
                          ),
                          children: <Widget>[
                            Card(
                              child: Text(
                                "Tile1",
                                style: TextStyle(
                                  color: Colors.green[900],
                                  fontSize: 20
                                ),
                              ),
                            ),
                            Card(
                              child: Text(
                                "Tile1",
                                style: TextStyle(
                                  color: Colors.green[900],
                                  fontSize: 20
                                ),
                              ),
                            ),
                            Card(
                              child: Text(
                                "Tile1",
                                style: TextStyle(
                                  color: Colors.green[900],
                                  fontSize: 20
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                            height: queryData.size.height,
                            width: queryData.size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(10.0),
                              boxShadow: <BoxShadow>[BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                blurRadius: 2,
                                offset: Offset(1,1),
                              ),]
                            )
                          )
                        ),
                          ],
                        )
                      ),
                    ]
                  ) 
                )
              )
            )
          ]
        )
      ]),
    );
  }
  horizontalLine(){
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
        padding:EdgeInsets.symmetric(horizontal:10.0),
        child:Container(
        height:1.0,
        width:width,
        color:Colors.black,
      ),
    );
  }
}