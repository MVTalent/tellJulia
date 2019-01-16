import 'package:flutter/material.dart';
import 'package:tell_julia/common/colors/common_colors.dart';
import 'package:tell_julia/common/images/common_images.dart';
import 'package:tell_julia/components/buttons/custom_flat_button.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.star,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                ),
              ],
            ),
            Text(
              'Новичок',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w300,
              ),
            ),
            IconButton(
              icon: ImageIcon(CommonImages.logout),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/LoginPage');
              },
            )
          ],
        ),
        backgroundColor: CommonColors.commonMainContainerColor,
      ),
      body: Container(
        color: CommonColors.commonMainContainerColor,
        child: Column(
          children: <Widget>[
            /**/
            Expanded(
              child: CustomFlatButton(
                text: 'Благодарность',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => MapPage(namePage: '/ThanksPage',),
                    ),
                  );
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => MapPage(
                            feedbackPage: ThanksPage(),
                          ),
                    ),
                  );*/
                },
              ),
            ),
            Expanded(
              child: CustomFlatButton(
                text: 'НЕидеальная полка',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => MapPage(namePage: '/IncorrectShelfPage',),
                    ),
                  );
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => MapPage(
                        feedbackPage: IncorrectShelfPage(),
                      ),
                    ),
                  );*/
                },
              ),
            ),
            Expanded(
              child: CustomFlatButton(
                text: 'Дефект продукта',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => MapPage(namePage: '/ProductDefectPage',),
                    ),
                  );
                 /* Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => MapPage(
                        feedbackPage: ProductDefectPage(),
                      ),
                    ),
                  );*/
                },
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
