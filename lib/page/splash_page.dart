import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final int _splashDuration = 3;

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
    return new Scaffold(
      body: new Container(
        child: Center(
          child: Text("Заставка"),
        ),
      ),
    );
  }
}
