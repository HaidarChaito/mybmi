import 'package:flutter/material.dart';
import 'package:mybmi/components/constants.dart';
import 'package:mybmi/components/mycustom_card.dart';
import 'package:mybmi/components/nav_button.dart';
import 'package:mybmi/screens/input_screen.dart';

class ResultScreen extends StatefulWidget {
  final String bmi;
  final String bmiMessage;
  final String bmiInterpret;

  const ResultScreen(
      {Key? key,
      required this.bmi,
      required this.bmiMessage,
      required this.bmiInterpret})
      : super(key: key);

  @override
  State<ResultScreen> createState() =>
      // ignore: no_logic_in_create_state
      _ResultScreenState(bmi, bmiMessage, bmiInterpret);
}

class _ResultScreenState extends State<ResultScreen> {
  final String bmi;
  final String bmiMessage;
  final String bmiInterpret;
  _ResultScreenState(this.bmi, this.bmiMessage, this.bmiInterpret);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Results')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: MyCustomCard(
              kActiveCardColor,
              cardChild: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      bmiMessage,
                      style: kBmiMessageLabel,
                    ),
                    Text(
                      bmi,
                      style: kLabelNumberStyle,
                    ),
                    Text(
                      bmiInterpret,
                      style: kBmiMessage,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          NavButton(
            'RE CALCULATE',
            () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const InputPage(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
