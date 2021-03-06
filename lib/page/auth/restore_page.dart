import 'package:flutter/material.dart';
import 'package:tell_julia/common/colors/common_colors.dart';
import 'package:tell_julia/components/buttons/custom_outline_button.dart';
import 'package:tell_julia/page/done_page.dart';

class RestorePage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 180),
        color: CommonColors.commonMainContainerColor,
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 40.0, right: 40.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                      style: BorderStyle.solid),
                ),
              ),
              padding: EdgeInsets.only(left: 0.0, right: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10.0, bottom: 10.0, right: 10.0),
                    child: Icon(
                      Icons.alternate_email,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _emailController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email/телефон',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
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
                          text: 'ВОССТАНОВИТЬ',
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DonePage(
                                      message:
                                          'Спасибо, новый код доступа направлен на указанный адрес электронной почты/телефон',
                                    ),
                              ),
                            );
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
