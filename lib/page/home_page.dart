import 'package:flutter/material.dart';
import 'package:tell_julia/page/about_page.dart';
import 'package:tell_julia/page/login_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Color textColor = Colors.white;
    final AssetImage apple =
        AssetImage('assets/images/apple_with_big_bite.png');
    final AssetImage egg = AssetImage('assets/images/eggs.png');

    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => AboutPage()));
                    },
                    child: Row(
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
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => AboutPage()));
                    },
                    color: Colors.green,
                    textColor: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Новичок",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
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
                        Icon(Icons.exit_to_app),
                        Text("Выйти")
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
                  onPressed: () => {},
                  color: Colors.white,
                  textColor: Colors.green,
                  //padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.thumbsUp,
                        size: 80,
                      ),
                      Text(
                        "Благодарность",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w300),
                      )
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
                  onPressed: () => {},
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
                        "НЕидеальная полка",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w300),
                      )
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
                  onPressed: () => {},
                  color: Colors.white,
                  textColor: Colors.green,
                  //padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(
                        image: apple,
                        width: 80.0,
                        height: 80.0,
                        color: Colors.green,
                      ),
                      Text(
                        "Дефект продукта",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w300),
                      )
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
                    child: Column(
                      children: <Widget>[
                        Text(
                          "О программе",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
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
                    child: Row(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.envelope),
                        //Text("Выйти")
                      ],
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
