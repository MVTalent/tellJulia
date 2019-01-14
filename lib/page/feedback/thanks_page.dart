import 'package:flutter/material.dart';
import 'package:tell_julia/page/feedback/feedback_page.dart';

class ThanksPage extends FeedbackPage {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.print),
        title: Text('Отправить\nблагодарность'),
      ),
      body: Container(
        color: Colors.green,
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
