import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tell_julia/common/colors/common_colors.dart';
import 'package:tell_julia/common/images/common_images.dart';
import 'package:tell_julia/components/appbars/preferred_size_appbar.dart';
import 'package:tell_julia/page/feedback/feedback_page.dart';
import 'package:image_picker/image_picker.dart';

class ThanksPage extends StatefulWidget /*implements FeedbackPage*/ {
  @override
  _ThanksPageState createState() => _ThanksPageState();
}

class _ThanksPageState extends State<ThanksPage> {
  int _radioValue = 0;
  List<File> _fileList = [];

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;
    });
  }

  void _getImage(ImageSource imageSource) async {
    File image = await ImagePicker.pickImage(source: imageSource);
    if (image != null) {
      setState(() {
        _fileList.add(image);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSizeAppBar(
        appBarImage: CommonImages.review,
        appBarText: 'ОТПРАВИТЬ\nБЛАГОДАРНОСТЬ',
      ),
      body: Container(
        color: CommonColors.commonMainContainerColor,
        child: Column(
          children: <Widget>[
            TextField(
              maxLines: null,
              keyboardType: TextInputType.multiline,
            ),
            Radio(
              value: 0,
              groupValue: _radioValue,
              onChanged: _handleRadioValueChange,
            ),
            Text('1'),
            Radio(
              value: 1,
              groupValue: _radioValue,
              onChanged: _handleRadioValueChange,
            ),
            Text('2'),
            Radio(
              value: 2,
              groupValue: _radioValue,
              onChanged: _handleRadioValueChange,
            ),
            Text('3'),
            Row(
              children: <Widget>[
                SizedBox(
                  height: 70,
                  child: OutlineButton(
                    onPressed: () => _getImage(ImageSource.camera),
                    shape: CircleBorder(),
                    child: Icon(
                      Icons.camera_alt,
                      //color: Colors.blue,
                      size: 35.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: OutlineButton(
                    onPressed: () => _getImage(ImageSource.gallery),
                    shape: CircleBorder(),
                    child: Icon(
                      Icons.attach_file,
                      //color: Colors.blue,
                      size: 35.0,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 200,
              color: Colors.white,
              child: _fileList.length == 0
                  ? Text('Нет прикрпеленных фото')
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _fileList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 100,
                          child: FlatButton(
                            onPressed: null,
                            child: IconButton(
                                icon: Image.file(_fileList[index]),
                                onPressed: () {
                                  print('click image');
                                }),
                            shape: CircleBorder(),
                          ), //IconButton(icon: Image.file(_fileList[index]), onPressed: () {print('click image');}),
                        );
                      },
                    ),
            )
          ],
        ),
      ),
    );
  }
}
