import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_card.dart';

const Color activeCardColour = Color(0xFF1d1f33);
const Color inactiveCardColour = Color(0xFF111428);
const Color bottomContainerColour = Color(0xFFeb1555);
const double bottomContainerHeight = 70.0;

const Color activeGenderTextColour = Color(0xFFFFFFFF);
const Color inactiveGenderTextColour = Color(0xFF83858f);

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

// this will help specify what gender was selected.
enum Gender { male, female }

class _FirstPageState extends State<FirstPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

  Color maleTextColour = inactiveGenderTextColour;
  Color femaleTextColour = inactiveGenderTextColour;

  void updateColour(Gender selectedGender) {
    // 1 == male
    if (selectedGender == Gender.male) {
      if (maleCardColour == inactiveCardColour) {
        maleTextColour = activeGenderTextColour;
        maleCardColour = activeCardColour;

        femaleTextColour = inactiveGenderTextColour;
        femaleCardColour = inactiveCardColour;
      } else {
        maleTextColour = inactiveGenderTextColour;
        maleCardColour = inactiveCardColour;
      }
    }
    if (selectedGender == Gender.female) {
      if (femaleCardColour == inactiveCardColour) {
        femaleTextColour = activeGenderTextColour;
        femaleCardColour = activeCardColour;

        maleTextColour = inactiveGenderTextColour;
        maleCardColour = inactiveCardColour;
      } else {
        femaleTextColour = inactiveGenderTextColour;
        femaleCardColour = inactiveCardColour;
      }
    }
  }

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
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(Gender.male);
                    });
                  },
                  child: ReusableCard(
                    cardColour: maleCardColour,
                    cardChild: IconCard(
                      genderIcon: FontAwesomeIcons.mars,
                      genderText: 'MALE',
                      textColor: maleTextColour,
                    ),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(Gender.female);
                    });
                  },
                  child: ReusableCard(
                    cardColour: femaleCardColour,
                    cardChild: IconCard(
                      genderIcon: FontAwesomeIcons.venus,
                      genderText: "FEMALE",
                      textColor: femaleTextColour,
                    ),
                  ),
                )),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            cardColour: activeCardColour,
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  cardColour: activeCardColour,
                )),
                Expanded(
                    child: ReusableCard(
                  cardColour: activeCardColour,
                )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
            color: bottomContainerColour,
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
