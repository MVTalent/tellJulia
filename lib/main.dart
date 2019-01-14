import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tell_julia/page/about_page.dart';
import 'package:tell_julia/page/done_page.dart';
import 'package:tell_julia/page/home_page.dart';
import 'package:tell_julia/page/auth/login_page.dart';
import 'package:tell_julia/page/auth/register_page.dart';
import 'package:tell_julia/page/auth/restore_page.dart';
import 'package:tell_julia/page/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tellJuila',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        hintColor: Colors.white,
        inputDecorationTheme: new InputDecorationTheme(
          labelStyle: new TextStyle(color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
      ),
      home: SplashPage(),
      routes: <String, WidgetBuilder>{
        '/LoginPage': (BuildContext context) => LoginPage(),
        '/HomePage': (BuildContext context) => HomePage(),
        '/AboutPage': (BuildContext context) => AboutPage(),
        '/RestorePage': (BuildContext context) => RestorePage(),
        '/RegisterPage': (BuildContext context) => RegisterPage(),
        '/DonePage': (BuildContext context) => DonePage(message: ""),
      },
    );
  }
}