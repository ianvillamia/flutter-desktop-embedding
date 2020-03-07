import 'package:flutter/material.dart';
import 'package:easy_dialog/easy_dialog.dart';

class MainBar extends StatelessWidget {
  var height;
  var width;
  MainBar(this.height, this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width * .75,
        height: height,
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Container(
            width: width * .20,
            height: height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      
                      Container(
                          height: 50,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Icon(Icons.add),
                            color: Colors.red,
                          )),
                      SizedBox(
                        width: width * .005,
                      ),
                      Container(
                          height: 50,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.update,
                            ),
                            color: Colors.red,
                          )),
                      SizedBox(
                        width: width * .005,
                      ),
                      Container(
                          height: 50,
                          child: MaterialButton(
                            onPressed: () {
                              print('clicked');
                              buildDialog(context);
                            },
                            child: Icon(
                              Icons.delete,
                            ),
                            color: Colors.red,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: height * .8,
                    color: Colors.red,
               
                  ),
                )
              ],
            ),
          ),
        ));
  }
  buildDialog(BuildContext context){
   return EasyDialog(
      closeButton: false,
      cornerRadius: 10.0,
      fogOpacity: 0.1,
      width: 280,
      height: 220,
      title: Text(
        "Custom Easy Dialog Title",
        style: TextStyle(fontWeight: FontWeight.bold),
        textScaleFactor: 1.2,
      ),
      descriptionPadding:
          EdgeInsets.only(left: 17.5, right: 17.5, bottom: 15.0),
      description: Text(
        "This is a custom dialog. Easy Dialog helps you easily create basic or custom dialogs.",
        textScaleFactor: 1.1,
        textAlign: TextAlign.center,
      ),
      topImage: NetworkImage(
          "https://raw.githubusercontent.com/ricardonior29/easy_dialog/master/example/assets/topImageblack.png"),
      contentPadding:
          EdgeInsets.only(top: 12.0), // Needed for the button design
      contentList: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0))),
          child: FlatButton(
            onPressed: () {
              Navigator.of(context).pop();},
            child: Text("Okay",
              textScaleFactor: 1.3,
            ),),
        ),
      ]).show(context);
  }
}
