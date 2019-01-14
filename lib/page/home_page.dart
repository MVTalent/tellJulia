import 'package:flutter/material.dart';
import 'package:tell_julia/page/about_page.dart';
import 'package:tell_julia/page/auth/login_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tell_julia/page/feedback/non_ideal_shelf_page.dart';
import 'package:tell_julia/page/feedback/product_defect_page.dart';
import 'package:tell_julia/page/feedback/thanks_page.dart';
import 'package:tell_julia/page/maps/map_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color textColor = Colors.white;
  final AssetImage apple = AssetImage('assets/images/apple.png');
  final AssetImage egg = AssetImage('assets/images/eggs.png');
  final AssetImage review = AssetImage('assets/images/review_1.png');
  final AssetImage mail = AssetImage('assets/images/new_email.png');
  final AssetImage logout = AssetImage('assets/images/logout.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20, top: 20),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.star,
                        color: textColor,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: textColor,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: textColor,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: textColor,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: textColor,
                        size: 15,
                      ),
                    ],
                  ),
                  //),
                  Text(
                    'Новичок',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/LoginPage');
                    },
                    color: Colors.green,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        Image(
                          image: logout,
                          width: 25.0,
                          height: 25.0,
                          color: Colors.white,
                        ),
                        /*Text(
                          'Выйти',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300),
                        )*/
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ButtonTheme(
                minWidth: double.infinity,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MapPage(feedbackPage: ThanksPage(),)));
                  },
                  color: Colors.white,
                  textColor: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(
                        image: review,
                        width: 90.0,
                        height: 90.0,
                        color: Colors.green,
                      ),
                      Text(
                        'Благодарность',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 5,
              color: Colors.green,
            ),
            Expanded(
              child: ButtonTheme(
                minWidth: double.infinity,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MapPage(feedbackPage: NonIdealShelfPage(),)));
                  },
                  color: Colors.white,
                  textColor: Colors.green,
                  //padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(
                        image: egg,
                        width: 80.0,
                        height: 80.0,
                        color: Colors.green,
                      ),
                      Text(
                        'НЕидеальная полка',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 5,
              color: Colors.green,
            ),
            Expanded(
              child: ButtonTheme(
                minWidth: double.infinity,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MapPage(feedbackPage: ProductDefectPage(),)));
                  },
                  color: Colors.white,
                  textColor: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(
                        image: apple,
                        width: 90.0,
                        height: 90.0,
                        color: Colors.green,
                      ),
                      Text(
                        'Дефект продукта',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => AboutPage()));
                    },
                    color: Colors.green,
                    textColor: Colors.white,
                    child: Text(
                      'О программе',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/LoginPage');
                    },
                    color: Colors.green,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    child: Image(
                      image: mail,
                      width: 35.0,
                      height: 35.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
