import 'package:flutter/material.dart';
import 'package:bmi_app/constants.dart';
import 'package:bmi_app/reusable_card.dart';
import 'package:bmi_app/bottom_button.dart';
import 'package:bmi_app/calculator_brain.dart';

class Resultas extends StatelessWidget {
  Resultas(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            child: const Text(
              'Your Results',
              style: kLargeHeadingTextStyle,
            ),
          )),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colr: cardColor,
                cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText,
                        style: kResultTextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: kBMITextStyle,
                      ),
                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      )
                    ]),
              )),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTapp: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
