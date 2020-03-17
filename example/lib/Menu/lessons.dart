
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:example_flutter/Shared/customexpansiontile.dart' as custom;
import 'package:example_flutter/Shared/navbutton.dart';
import 'package:example_flutter/Shared/navbar.dart';
import 'package:example_flutter/Menu/reports.dart';
import 'package:example_flutter/Menu/users.dart';

class Lessons extends StatefulWidget {
  @override
  _LessonsState createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Scaffold(
      body: Stack(
        children: <Widget>[
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
                              buttons(context, Colors.white,Colors.black,Offset(0, 0), 0, 'Reports', Icons.dashboard, Reports()),
                              buttons(context,Colors.red,Colors.white,Offset(1, 1), 2,'Lessons', Icons.book, Lessons()),
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
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.red[500],
                            borderRadius: BorderRadius.only(topLeft:Radius.circular(15), topRight: Radius.circular(15)),
                          ),
                          width: queryData.size.width/1.25,
                          height: queryData.size.height/7.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Hakdog"
                              ),
                              MaterialButton(
                                highlightColor: Colors.red,
                                splashColor: Colors.red[900],
                                onPressed: () {},
                                color: Colors.red[600],
                                textColor: Colors.white,
                                child: Icon(
                                  Icons.add,
                                  size: 24,
                                ),
                                padding: EdgeInsets.all(16),
                                shape: CircleBorder(),
                              )
                            ],
                          )
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child:Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Column(
                                      // align the text to the left instead of centered
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('Lesson Title', style: TextStyle(fontSize: 16),),
                                        //Text('subtitle'),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      // align the text to the left instead of centered
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('Actions', style: TextStyle(fontSize: 16),),
                                        //Text('subtitle'),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                        ),
                        horizontalLine(),
                        Container(
                          padding: EdgeInsets.all(10),
                          color: Colors.white,
                          child:custom.ExpansionTile(    
                            headerBackgroundColor: Colors.red[500],
                            iconColor: Colors.black,       
                            title: Container(
                              color: Colors.red[500],
                                child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Column(
                                      // align the text to the left instead of centered
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('What is your shit?', style: TextStyle(fontSize: 16, color: Colors.black)),
                                        //Text('subtitle'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 45,),
                                  Expanded(
                                    child: Row(
                                      // align the text to the left instead of centered
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        IconButton(
                                          hoverColor: Colors.blue,
                                          highlightColor: Colors.blue,
                                          icon: Icon(Icons.edit),
                                          color: Colors.yellow,
                                          onPressed: () {
                                            print("edit");
                                          },
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.delete),
                                          color: Colors.red[200],
                                          onPressed: () {
                                            print("delete");
                                          },
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 60.0,
                                      //margin: const EdgeInsets.only(top:10.0, left: 10.0, right:10.0, bottom: 10.0),
                                      decoration: BoxDecoration(                    
                                        color: Colors.white,
                                        borderRadius: new BorderRadius.all(  Radius.circular(5.0) ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 60.0,
                                      //margin: const EdgeInsets.only(top:10.0, left: 10.0, right:10.0, bottom: 0.0),
                                      decoration: BoxDecoration(                    
                                        color: Colors.white,
                                        borderRadius: new BorderRadius.all(  Radius.circular(5.0) ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                            backgroundColor: Colors.grey[100],
                          ),
                        )
                      ],
                    ),
                    )
                  )
                ),
              )
            ]
          )
        ]
      )
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