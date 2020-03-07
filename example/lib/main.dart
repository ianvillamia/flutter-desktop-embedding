// Copyright 2018 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:example_flutter/mainbar.dart';
import 'package:example_flutter/navbar.dart';
import 'package:example_flutter/ui/home_view.dart';
import 'package:example_flutter/ui/base_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          // See https://github.com/flutter/flutter/wiki/Desktop-shells#fonts
          fontFamily: 'Roboto',
        ),
       // home: HomeView());
       home: Poo());
  }
}

class Poo extends StatelessWidget {
  const Poo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
        return BaseWidget(builder: (context, sizingInformation) {
 return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          width: width,
          height: height,
          color: Color.fromRGBO(216, 204, 204, 100),
        ),
        Row(
          children: <Widget>[
            Container(
              width: width * .25,
              child: Navbar(width, height),
            ),
         MainBar(height,width)
          ],
        )
      ]),
    );
        });
   
  }
}
