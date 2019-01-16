import 'package:flutter/material.dart';
import 'package:tell_julia/common/colors/common_colors.dart';
import 'package:tell_julia/common/images/common_images.dart';
import 'package:tell_julia/components/appbars/preferred_size_appbar.dart';
import 'package:tell_julia/page/feedback/feedback_page.dart';

class ProductDefectPage extends StatefulWidget/* implements FeedbackPage */{
  @override
  _ProductDefectPage createState() => _ProductDefectPage();
}

class _ProductDefectPage extends State<ProductDefectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSizeAppBar(
        appBarImage: CommonImages.apple,
        appBarText: 'ДЕФЕКТ\nПРОДУКТА',
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
