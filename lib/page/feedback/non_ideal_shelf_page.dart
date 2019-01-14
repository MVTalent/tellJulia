
import 'package:flutter/material.dart';
import 'package:tell_julia/page/feedback/feedback_page.dart';

class NonIdealShelfPage extends FeedbackPage {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Проблема\nна полке'),
      ),
      body: ListView(
        children: <Widget>[
          TextField(
            maxLines: null,
            keyboardType: TextInputType.multiline,
          )
        ],
      ),
    );
  }

}