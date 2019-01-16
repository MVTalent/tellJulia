import 'package:flutter/material.dart';
import 'package:tell_julia/common/images/common_images.dart';

class CustomFlatButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomFlatButton(
      {Key key, @required this.text, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        /*image: new DecorationImage(
                    image: new AssetImage('assets/images/flowers.jpg'),
                    fit: BoxFit.cover,
                  ),*/
        border: Border(
          bottom: BorderSide(
              color: Colors.yellow, width: 5.0, style: BorderStyle.solid),
        ),
      ),
      child: ButtonTheme(
        minWidth: double.infinity,
        child: FlatButton(
          onPressed: onPressed,
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
                text,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
