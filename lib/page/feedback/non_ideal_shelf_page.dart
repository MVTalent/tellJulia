import 'package:flutter/material.dart';
import 'package:tell_julia/common/colors/common_colors.dart';
import 'package:tell_julia/common/images/common_images.dart';
import 'package:tell_julia/components/appbars/preferred_size_appbar.dart';
import 'package:tell_julia/page/feedback/feedback_page.dart';

class IncorrectShelfPage extends StatefulWidget /*implements FeedbackPage*/ {
  @override
  _IncorrectShelfPage createState() => _IncorrectShelfPage();
}

class _IncorrectShelfPage extends State<IncorrectShelfPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSizeAppBar(
        appBarImage: CommonImages.egg,
        appBarText: 'ПРОБЛЕМА\nНА ПОЛКЕ',
      ),
      body: Container(
        color: CommonColors.commonMainContainerColor,
        child: ListView(
          children: <Widget>[
            TextField(
              maxLines: null,
              keyboardType: TextInputType.multiline,
            )
          ],
        ),
      ),
    );
  }
}
