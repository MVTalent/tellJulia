import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tell_julia/common/colors/common_colors.dart';
import 'package:tell_julia/components/buttons/custom_outline_button.dart';
import 'package:tell_julia/page/done_page.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 180),
        color: CommonColors.commonMainContainerColor,
        child: ListView(
          children: <Widget>[
            Container(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
                child: Text(
                  'Введите адрес своей электронной почты или своего номера телефона и мы вышлем Вам пароль для входа',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
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
                      //cons.lock_outline,
                      FontAwesomeIcons.user,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      //controller: _passwordController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Имя',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
                      //controller: _emailController,
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
                          text: 'ЗАРЕГИСТРИРОВАТЬСЯ',
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DonePage(
                                      message:
                                          'Спасибо, код доступа направлен на указанный адрес электронной почты/телефон',
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
