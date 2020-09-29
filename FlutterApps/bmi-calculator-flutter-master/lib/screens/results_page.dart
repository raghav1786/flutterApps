import 'package:flutter/material.dart';
import '../Constants.dart';
import '../components/reusableCard.dart';
import '../components/round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultTxt,
      @required this.interpretations});
  final String bmiResult;
  final String resultTxt;
  final String interpretations;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 30.0, left: 10.0),
              child: Text(
                'Your Result',
                style: kExtraLargeFontTxtStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Center(
                    child: Container(
                      child: Text(
                        resultTxt.toUpperCase(),
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w900,
                            fontSize: 22.0),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: Text(
                        bmiResult,
                        style: kExtraLargeFontTxtStyle,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      interpretations,
                      textAlign: TextAlign.center,
                      style: kDescTxtStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
