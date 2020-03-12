import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class NavBarDrawer extends StatefulWidget {

  @override
  _NavBarDrawerState createState() => _NavBarDrawerState();
  
}
class _NavBarDrawerState extends State<NavBarDrawer> {
  
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    //height: queryData.size.height / 5,
                //width: queryData.size.width / 6.5,
    return Container(
      width: width * .20,
      height: height,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: width * .05,
                height: height * .10,
                child: Center(
                  child: Image(
                    image: AssetImage('assets/logos.png'),
                  ),
                ),
              ),
              Text(
                'Elements++',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          horizontalLine(),
          Container(
            height: height * .15,
            child: Padding(
              padding:  EdgeInsets.all(15),
              child: Container(
                child: Row(
                  children: <Widget>[
                    Image(image: AssetImage('assets/admin.png')),
                    Container(
                      height: queryData.size.height / 5,
                      width: queryData.size.width / 8.5,
                        // width: (width * .2) * .8,
                        // height: height * .10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'David M. Grey',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 10),
                              ),
                              Text('Project Manager'),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
          horizontalLine(),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  
                  buttons(Colors.red,Colors.white,Offset(1, 1), 2, 'Reports', Icons.dashboard),
                  buttons(Colors.white,Colors.black,Offset(0, 0), 0,'Lessons', Icons.book),
                  buttons(Colors.white,Colors.black,Offset(0, 0), 0,'Users', Icons.people),
                ],
              )
            ),
        ],
      ),
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

  buttons(Color bcolor, icolor,Offset offset, double blur, String text, IconData icon){
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
            onPressed: () {},
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