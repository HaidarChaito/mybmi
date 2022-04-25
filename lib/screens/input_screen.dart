import 'package:mybmi/calculator_brain.dart';
import 'package:mybmi/components/constants.dart';
import 'package:mybmi/components/input_label_buttons.dart';
import 'package:mybmi/components/mycustom_card.dart';
import 'package:mybmi/components/mycustom_card_icon.dart';
import 'package:mybmi/components/nav_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybmi/screens/results_screen.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var selectedGender = Gender.male;
  var height = 180;
  var weight = 60;
  var age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyCustomCard(
                    selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild:
                        const MyCustomCardIcon(FontAwesomeIcons.mars, 'Male'),
                    onTapped: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                    child: MyCustomCard(
                  selectedGender == Gender.female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild:
                      const MyCustomCardIcon(FontAwesomeIcons.venus, 'Female'),
                  onTapped: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                )),
              ],
            ),
          ),
          Expanded(
            child: MyCustomCard(
              kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kLabelNumberStyle,
                      ),
                      const Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    activeColor: kBottonColor,
                    inactiveColor: kSliderInactive,
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newHeight) {
                      setState(() {
                        height = newHeight.toInt();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: MyCustomCard(
                    kActiveCardColor,
                    cardChild: InputLabelButtons(
                      inputName: 'WEIGHT',
                      input: weight,
                      onPressed1: () => setState(
                        () {
                          if (weight > 0) {
                            weight--;
                          }
                        },
                      ),
                      onPressed2: () => setState(
                        () {
                          weight++;
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MyCustomCard(
                    kActiveCardColor,
                    cardChild: InputLabelButtons(
                      inputName: 'AGE',
                      input: age,
                      onPressed1: () => setState(
                        () {
                          if (age > 0) {
                            age--;
                          }
                        },
                      ),
                      onPressed2: () => setState(
                        () {
                          age++;
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          NavButton(
            'CALCULATE',
            () {
              CalculatorBrain calc = CalculatorBrain(height, weight);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    bmi: calc.calculateBmi(),
                    bmiMessage: calc.getResult(),
                    bmiInterpret: calc.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
