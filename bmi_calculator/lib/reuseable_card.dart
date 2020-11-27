import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Color(0xFF111428),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    );
  }
}
