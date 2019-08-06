import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LoginState();
  }
}

class LoginState extends State<Login> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  String _welcomeString ="";
  void _erase() {
    setState(() {
      _userController.clear();
      _passwordController.clear();
    });
  }

  void _showWelcome(){
    setState(() {
      if (_userController.text.isNotEmpty && _passwordController.text.isNotEmpty){
        _welcomeString = _userController.text;
      }
      else
        _welcomeString = 'Nothing';
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: new AppBar(
          title: new Text('Dr. Cough'),
          backgroundColor: Colors.red.shade800,
        ),
        body: new Container(
          alignment: Alignment.topCenter,
          child: new Column(children: <Widget>[
            new Image.asset(
              'images/logo.png',
              width: 90,
              height: 90,
              //color: Colors.amber,
            ),
            new Container(
              height: 180,
              width: 380,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                        hintText: 'Username', icon: new Icon(Icons.person)),
                  ),
                  new TextField(
                      controller: _passwordController,
                      decoration: new InputDecoration(
                          hintText: 'Passowrd',
                          icon: new Icon(Icons.lock_outline))),
                  new Padding(padding: new EdgeInsets.all(10)),
                  new Center(
                      child: new Row(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(left: 70),
                        child: new RaisedButton(
                          onPressed: _showWelcome,
                          color: Colors.lightGreen,
                          child: new Text('Login'),
                        ),
                      ),
                      new Container(
                        margin: const EdgeInsets.only(left: 70),
                        child: new RaisedButton(
                          onPressed: () => _erase(),
                          color: Colors.blueGrey,
                          child: new Text('Clear'),
                        ),
                      )
                    ],
                  ))
                ],
              ),
            ),
            new Padding(padding: new EdgeInsets.all(10)),
            new Center(
              child: new Container(
                child: new Text('Welcome, $_welcomeString',
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontStyle: FontStyle.italic)),
              ),
            ),
          ]),
        ));
  }
}
