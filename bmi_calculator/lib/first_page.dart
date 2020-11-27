import 'package:flutter/material.dart';
import 'reuseable_card.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReuseableCard()),
                Expanded(child: ReuseableCard()),
              ],
            ),
          ),
          Expanded(child: ReuseableCard()),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReuseableCard()),
                Expanded(child: ReuseableCard()),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 70,
            color: Color(0xFFeb1555),
            child: Center(
              child: Text(
                'CALCULATE YOUR BMI',
                style: TextStyle(
                  letterSpacing: 1.0,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
