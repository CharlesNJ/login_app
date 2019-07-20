import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LoginState();
  }
}
class LoginState extends State<Login>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: new AppBar(
        title: new Text('Dr. Cough'),
        centerTitle: true,
        backgroundColor: Colors.red.shade800,),
        body: new Container(
          alignment: Alignment.topCenter,
          child: new Column(
            children: <Widget>[
              new Image.asset('images/logo.png',
              width:90,
              height: 90,
              //color: Colors.amber,
            ),
              new Container(
                height: 180,
          width: 380, color: Colors.white)        )
    ],
          )
        )
    );


    ;
  }

}
