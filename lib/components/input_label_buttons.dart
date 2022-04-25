import 'package:mybmi/components/constants.dart';
import 'package:mybmi/components/rounded_custom_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputLabelButtons extends StatelessWidget {
  const InputLabelButtons({
    Key? key,
    required this.input,
    required this.onPressed1,
    required this.onPressed2,
    required this.inputName,
  }) : super(key: key);
  final VoidCallback onPressed1;
  final VoidCallback onPressed2;
  final int input;
  final String inputName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          inputName,
          style: kLabelTextStyle,
        ),
        Text(
          input.toString(),
          style: kLabelNumberStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedCustomButton(
              icon: FontAwesomeIcons.minus,
              onPressed: onPressed1,
            ),
            const SizedBox(
              width: 10,
            ),
            RoundedCustomButton(
              icon: FontAwesomeIcons.plus,
              onPressed: onPressed2,
            ),
          ],
        ),
      ],
    );
  }
}
