import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final width, height;
  Navbar(this.width, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * .2,
      height: height,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            height: height * .20,
            child: Center(child: Image(image: AssetImage('assets/logo.png'))),
          ),
          mainBar(),
          SizedBox(height: height * .03),
          Container(
            height: height * .10,
            width: width,
            color: Colors.grey,
            child: MaterialButton(
              child: Text('DASHBOARD'),
              onPressed: () {},
            ),
          ),
      
        ],
      ),
    );
  }

  mainBar() {
 
    return Container(
      height: height * .15,
      color: Colors.brown,
      child: Padding(
        padding:  EdgeInsets.all(15),
        child: Container(
          child: Row(
            children: <Widget>[
              Image(image: AssetImage('assets/admin.png')),
              Container(
                  width: (width * .2) * .8,
                  height: height * .10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'David M. Grey',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Text('Project Manager'),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
