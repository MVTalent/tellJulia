import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  //TODO вынести в класс настроек
  final int _splashDuration = 5;
  final AssetImage komosLogo = AssetImage('assets/images/komos_logo_400.jpg');
  final AssetImage woman = AssetImage('assets/images/woman_1024.png');

  startSplashScreenTimer() async {
    return Timer(Duration(seconds: _splashDuration), () {
      Navigator.of(context).pushReplacementNamed('/LoginPage');
    });
  }

  @override
  void initState() {
    super.initState();
    startSplashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 80, bottom: 30),
              child: Center(
                child: Image(image: komosLogo, width: 150.0, height: 150.0),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 30),
              child: Center(
                child: Image(image: woman, width: 150.0, height: 150.0),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  "TellJulia",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
