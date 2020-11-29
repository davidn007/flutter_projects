import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  final IconData genderIcon;
  final String genderText;
  final Color textColor;

  IconCard({this.genderIcon, this.genderText, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          genderText,
          style: TextStyle(
            fontSize: 18.0,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
