import 'package:flutter/material.dart';
import 'package:tell_julia/common/colors/common_colors.dart';

class PreferredSizeAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final ImageProvider appBarImage;

  final String appBarText;

  const PreferredSizeAppBar(
      {Key key, @required this.appBarImage, @required this.appBarText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        iconTheme: IconThemeData(
          color: CommonColors.commonMainContainerColor,
        ),
        backgroundColor: Colors.white,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: appBarImage,
                  width: 90.0,
                  height: 90.0,
                  color: CommonColors.commonMainContainerColor,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    appBarText,
                    style: TextStyle(
                        color: CommonColors.commonMainContainerColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(150.0);
}
