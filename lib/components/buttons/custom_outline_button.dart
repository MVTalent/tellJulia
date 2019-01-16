import 'package:flutter/material.dart';
import 'package:tell_julia/common/colors/common_colors.dart';

class CustomOutlineButton extends StatelessWidget {
  //текст кнопки
  final String text;

  //действие при нажатии кнопки
  final VoidCallback onPressed;

  const CustomOutlineButton({Key key, this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      borderSide: BorderSide(width: 3, color: Colors.white),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: CommonColors.outlineButtonTextColor,
        ),
      ),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
