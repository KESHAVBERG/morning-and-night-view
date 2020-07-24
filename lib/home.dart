import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isOn = false;
  String on;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            if (isOn == true){
              setState(() {
                isOn = false;
              });
            }else{
              setState(() {
                isOn = true;

              });
            }
          });
        },
        label:isOn? Text("on"): Text("off"),
        icon: Icon(Icons.radio_button_unchecked),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: height,
            width: width,
          decoration:isOn? BoxDecoration(
              color:isOn? Colors.black:Colors.white,

              image:DecorationImage(
              fit:BoxFit.fill,
              image: AssetImage("img/j.png")
            )
          ): BoxDecoration(
              color:isOn? Colors.black:Colors.white,

              image:DecorationImage(
                  fit:BoxFit.fill,
                  image: AssetImage("img/k.png")
              )
          ),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: Colors.white,
            shape: BoxShape.circle

            ),
            margin: EdgeInsets.fromLTRB(30, 30, 200, 500),
          ),

          Container(
            height: height,
            width: width,
            margin: EdgeInsets.fromLTRB(200, 35, 20, 500),
            decoration: BoxDecoration(
              color:isOn? Colors.transparent:Colors.amber,
              shape: BoxShape.circle
            ),
          )
        ],
      )
    );
  }
}
