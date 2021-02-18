import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.weight,
      @required this.bmiResult,
      @required this.interpretation});

  final String weight;
  final String bmiResult;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultTextStyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      weight.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: kResultingWeightStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBmiStyle,
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      child: Text(
                        interpretation,
                        style: kResultingAdviceStyle,
                        textAlign: TextAlign.center,
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                    )
                  ],
                ),
              )),
          BottomButton(
            title: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
