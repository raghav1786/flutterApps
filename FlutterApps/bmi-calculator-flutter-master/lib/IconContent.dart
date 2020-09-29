import 'package:flutter/material.dart';
import 'Constants.dart';

class IconContent extends StatelessWidget {
  final IconData iconName;
  final String text;
  IconContent({@required this.iconName, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(iconName, size: kIconSize, color: Colors.white),
        SizedBox(height: kSeperatorHieght),
        Text(text, style: kTxtStyle)
      ],
    );
  }
}
