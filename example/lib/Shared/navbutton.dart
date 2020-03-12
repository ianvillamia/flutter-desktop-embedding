import 'package:flutter/material.dart';
import 'package:example_flutter/Menu/reports.dart';
import 'package:example_flutter/Menu/users.dart';
import 'package:example_flutter/Menu/lessons.dart';
class Kahitano extends StatefulWidget {
  
  @override
  _KahitanoState createState() => _KahitanoState();
}

class _KahitanoState extends State<Kahitano> {
  var active = 'Reports';
  @override
  Widget build(BuildContext context) {
    if(active == 'Reports'){
      print(active);
      return Column(
        children: <Widget>[
          buttons(context, Colors.red,Colors.white,Offset(1, 1), 2, 'Reports', Icons.dashboard, Reports()),
          buttons(context, Colors.white,Colors.black,Offset(0, 0), 0,'Lessons', Icons.book, Lessons()),
          buttons(context, Colors.white,Colors.black,Offset(0, 0), 0,'Users', Icons.people, Users()),
        ],
      );
    }
    else if(active == 'Lessons'){
      print(active);
      return Column(
        children: <Widget>[
          buttons(context, Colors.white,Colors.black,Offset(0, 0), 0, 'Reports', Icons.dashboard, Reports()),
          buttons(context, Colors.red,Colors.white,Offset(1, 1), 2,'Lessons', Icons.book, Lessons()),
          buttons(context, Colors.white,Colors.black,Offset(0, 0), 0,'Users', Icons.people, Users()),
        ],
      );
    }
    else if(active == 'Users'){
      print(active);
      return Column(
        children: <Widget>[
          buttons(context, Colors.white,Colors.black,Offset(0, 0), 0, 'Reports', Icons.dashboard, Reports()),
          buttons(context, Colors.white,Colors.black,Offset(0, 0), 0,'Lessons', Icons.book, Lessons()),
          buttons(context, Colors.red,Colors.white,Offset(1, 1), 2,'Users', Icons.people, Users()),
        ],
      );
    }
  }
  
  buttons(BuildContext context, Color bcolor, icolor,Offset offset, double blur, String text, IconData icon, Widget route){
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(10),
      child:Container(
      height: height * .09,
      width: width,
        child:Container(
          height: height * .09,
          width: width,
            decoration: BoxDecoration(
              borderRadius: new BorderRadius.circular(10.0),
              boxShadow: <BoxShadow>[BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                blurRadius: blur,
                offset: offset,
              ),]
            ),
          child: MaterialButton(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0),
            ),
            onPressed: () {
              setState(() {
                active = text;
              });
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => route));
            },
            color: bcolor,
            child: Padding(
              padding: EdgeInsets.fromLTRB(2,2,2,2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    icon,
                    color: icolor,
                  ),
                  SizedBox(width: 50),
                  Text(
                    text.toUpperCase(),
                    style: TextStyle(
                      fontSize: 14, 
                      color: icolor,
                    ),
                  ),
                  
                ],
              ),
            ), 
          ),
        )
      )
    );
  }
}