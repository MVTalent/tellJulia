import 'package:flutter/material.dart';
import 'package:tell_julia/page/feedback/feedback_page.dart';

@deprecated
class FeedbackInfoPage extends StatefulWidget {
  final FeedbackPage feedbackPage;

  const FeedbackInfoPage({Key key, this.feedbackPage}) : super(key: key);

  @override
  _FeedbackInfoPage createState() => _FeedbackInfoPage();
}

class _FeedbackInfoPage extends State<FeedbackInfoPage> {
  @override
  Widget build(BuildContext context) {
    return widget.feedbackPage;
  }
}
