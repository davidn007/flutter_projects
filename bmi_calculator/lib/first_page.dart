import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_card.dart';

const Color activeCardColour = Color(0xFF1d1f33);
const Color inactiveCardColour = Color(0xFF111428);
const Color bottomContainerColour = Color(0xFFeb1555);
const double bottomContainerHeight = 70.0;

const Color activeSymbolColour = Color(0xFFFFFFFF);
const Color inactiveSymbolColour = Color(0xFF83858f);

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

// this will help specify what gender was selected.
enum Gender { male, female }

class _FirstPageState extends State<FirstPage> {
  Gender selectedCard;

  Color selectGender(Gender selectedGender) {
    return selectedCard == selectedGender
        ? activeSymbolColour
        : inactiveSymbolColour;
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
                      selectedCard = Gender.male;
                    });
                  },
                  child: ReusableCard(
                    cardColour: selectedCard == Gender.male
                        ? activeCardColour
                        : inactiveCardColour,
                    cardChild: IconCard(
                      genderIcon: FontAwesomeIcons.mars,
                      iconColor: selectGender(Gender.male),
                      genderText: 'MALE',
                      textColor: selectedCard == Gender.male
                          ? activeSymbolColour
                          : inactiveSymbolColour,
                    ),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCard = Gender.female;
                    });
                  },
                  child: ReusableCard(
                    cardColour: selectedCard == Gender.female
                        ? activeCardColour
                        : inactiveCardColour,
                    cardChild: IconCard(
                      genderIcon: FontAwesomeIcons.venus,
                      iconColor: selectGender(Gender.female),
                      genderText: "FEMALE",
                      textColor: selectedCard == Gender.female
                          ? activeSymbolColour
                          : inactiveSymbolColour,
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
