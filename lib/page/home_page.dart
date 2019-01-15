import 'package:flutter/material.dart';
import 'package:tell_julia/common/colors/common_colors.dart';
import 'package:tell_julia/common/images/common_images.dart';
import 'package:tell_julia/page/about_page.dart';
import 'package:tell_julia/page/feedback/non_ideal_shelf_page.dart';
import 'package:tell_julia/page/feedback/product_defect_page.dart';
import 'package:tell_julia/page/feedback/thanks_page.dart';
import 'package:tell_julia/page/maps/map_page.dart';

/*class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}*/
class HomePage extends StatelessWidget {
  final Color textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: CommonColors.commonBackgroundColor,
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
                  Text(
                    'Новичок',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/LoginPage');
                    },
                    textColor: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        Image(
                          image: CommonImages.logout,
                          width: 25.0,
                          height: 25.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: new BoxDecoration(
                  /*image: new DecorationImage(
                    image: new AssetImage('assets/images/flowers.jpg'),
                    fit: BoxFit.cover,
                  ),*/
                  border: Border(
                    bottom: BorderSide(
                        color: Colors.yellow,
                        width: 5.0,
                        style: BorderStyle.solid),
                  ),
                ),
                child: ButtonTheme(
                  minWidth: double.infinity,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => MapPage(
                                    feedbackPage: ThanksPage(),
                                  )));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image(
                          image: CommonImages.review,
                          width: 90.0,
                          height: 90.0,
                          color: Colors.white,
                        ),
                        Text(
                          'Благодарность',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                              letterSpacing: 5),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: new BoxDecoration(
                  /*image: new DecorationImage(
                    image: new AssetImage(
                        'assets/images/chicken_eggs_1728x800.jpg'),
                    fit: BoxFit.cover,
                  ),*/
                  border: Border(
                    bottom: BorderSide(
                        color: Colors.yellow,
                        width: 5.0,
                        style: BorderStyle.solid),
                  ),
                ),
                child: ButtonTheme(
                  minWidth: double.infinity,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => MapPage(
                                feedbackPage: NonIdealShelfPage(),
                              ),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image(
                          image: CommonImages.egg,
                          width: 90.0,
                          height: 90.0,
                          color: Colors.white,
                        ),
                        Text(
                          'НЕидеальная полка',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                              letterSpacing: 5),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                /*decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage(
                        'assets/images/red_apple_between_green.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),*/
                child: ButtonTheme(
                  minWidth: double.infinity,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => MapPage(
                                feedbackPage: ProductDefectPage(),
                              ),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image(
                          image: CommonImages.apple,
                          width: 90.0,
                          height: 90.0,
                          color: Colors.white,
                        ),
                        Text(
                          'Дефект продукта',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                              letterSpacing: 5),
                        ),
                      ],
                    ),
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
                          builder: (BuildContext context) => AboutPage(),
                        ),
                      );
                    },
                    textColor: Colors.white,
                    child: Text(
                      'О программе',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/LoginPage');
                    },
                    textColor: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    child: Image(
                      image: CommonImages.email,
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
/*class _HomePageState extends State<HomePage> {

  }
}*/
