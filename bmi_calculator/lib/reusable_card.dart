import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color cardColour;
  final Widget cardChild;

  ReusableCard({@required this.cardColour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: cardColour,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF111428).withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: cardChild,
    );
  }
}
