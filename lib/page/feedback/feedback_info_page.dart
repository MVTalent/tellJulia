import 'package:flutter/material.dart';
import 'package:tell_julia/page/feedback/feedback_page.dart';

class FeedbackInfoPage extends StatelessWidget {
  final FeedbackPage feedbackPage;

  const FeedbackInfoPage({Key key, @required this.feedbackPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return feedbackPage.build(context);
  }

}