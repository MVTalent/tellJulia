import 'package:flutter/material.dart';
import 'package:tell_julia/common/colors/common_colors.dart';
import 'package:tell_julia/common/images/common_images.dart';
import 'package:tell_julia/components/buttons/custom_outline_button.dart';

class DonePage extends StatelessWidget {
  final String message;

  const DonePage({Key key, @required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: CommonColors.commonMainContainerColor,
        child: ListView(
          children: <Widget>[
            /* Container(
              padding: EdgeInsets.only(top: 80, bottom: 30),
              child: Center(
                child: Image(image: komosLogo, width: 150.0, height: 150.0),
              ),
            ),*/
            Container(
              padding: EdgeInsets.only(top: 100, bottom: 30),
              child: Center(
                child: Image(
                    image: CommonImages.woman, width: 150.0, height: 150.0),
              ),
            ),
            Container(
              child: Text(
                'TellJulia',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 100),
              margin: EdgeInsets.only(left: 40.0, right: 40.0),
              child: Text(
                message,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40.0, right: 40.0, top: 50.0),
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: CustomOutlineButton(
                          text: 'ГОТОВО',
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/LoginPage');
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
