import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:transparent_image/transparent_image.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  //TODO вынести в класс настроек
  final int _splashDuration = 5;
  final AssetImage komosLogo = AssetImage('assets/images/komos_logo_400_1.png');
  final AssetImage woman = AssetImage('assets/images/woman_transparent.png');

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
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/wheat.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 80),
              child: Center(
                child: Image(image: komosLogo, width: 200.0, height: 200.0),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 30),
              child: Center(
                child: Image(image: woman, width: 200.0, height: 200.0),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  "TellJulia",
                  style: TextStyle(
                      color: Color(0xFF1A9F4B),
                      fontSize: 40,
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
