import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AssetImage woman = AssetImage('assets/images/woman_1024.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30),
        color: Colors.green,
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 30),
              child: Center(
                child: Image(image: woman, width: 150.0, height: 150.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40.0, right: 40.0),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                      style: BorderStyle.solid),
                ),
              ),
              padding: EdgeInsets.only(left: 0.0, right: 10.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10.0, bottom: 10.0, right: 10.0),
                    child: Icon(
                      Icons.alternate_email,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _emailController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email/телефон',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                      style: BorderStyle.solid),
                ),
              ),
              padding: EdgeInsets.only(left: 0.0, right: 10.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10.0, bottom: 10.0, right: 10.0),
                    child: Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      controller: _passwordController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Пароль',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40.0, right: 40.0, top: 50.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: OutlineButton(
                        child: Text("ВОЙТИ",
                            style: TextStyle(fontWeight: FontWeight.w700)),
                        onPressed: () {
                          SystemChannels.textInput
                              .invokeMethod('TextInput.hide');
                          Navigator.of(context)
                              .pushReplacementNamed('/HomePage');
                        },
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40.0, right: 40.0, top: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        SystemChannels.textInput.invokeMethod('TextInput.hide');
                        Navigator.of(context).pushNamed('/RestorePage');
                      },
                      child: Text(
                        "Забыли пароль?",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        SystemChannels.textInput.invokeMethod('TextInput.hide');
                        Navigator.of(context).pushNamed('/RegisterPage');
                      },
                      child: Text(
                        "Еще нет аккаунта?",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
