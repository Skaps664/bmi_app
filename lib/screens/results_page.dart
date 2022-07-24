import 'package:flutter/material.dart';
import 'package:bmi_app/constants.dart';
import 'package:bmi_app/reusable_card.dart';

class Resultas extends StatelessWidget {
  const Resultas({Key key}) : super(key: key);

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
                    children: const [
                      Text(
                        'Normal',
                        style: kResultTextStyle,
                      ),
                      Text(
                        '18.3',
                        style: kBMITextStyle,
                      ),
                      Text(
                        'Your BMI is quite low, you should eat more',
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      )
                    ]),
              ))
        ],
      ),
    );
  }
}
