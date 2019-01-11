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
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: ListView(
          children: <Widget>[
            Row(
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
                          "Новичок",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
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
                    children: <Widget>[Icon(Icons.exit_to_app), Text("Выйти")],
                  ),
                ),
              ],
            ),
            Container(
              child: FlatButton(
                onPressed: () => {},
                color: Colors.white,
                textColor: Colors.green,
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.thumb_up),
                    Text("Благодарность")
                  ],
                ),
              ),
            ),
            Container(
              child: FlatButton(
                onPressed: () => {},
                color: Colors.white,
                textColor: Colors.green,
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.add),
                    Text("НЕидеальная полка")
                  ],
                ),
              ),
            ),
            Container(
              child: FlatButton(
                onPressed: () => {},
                color: Colors.white,
                textColor: Colors.green,
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[Icon(Icons.add), Text("Дефект продукта")],
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
                /*Expanded(
                  child: */FlatButton(
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
                //),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
