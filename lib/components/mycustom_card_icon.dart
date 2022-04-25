import 'package:mybmi/components/constants.dart';
import 'package:flutter/material.dart';

class MyCustomCardIcon extends StatelessWidget {
  const MyCustomCardIcon(this.myCardIcon, this.myCardText, {Key? key})
      : super(key: key);
  final IconData myCardIcon;
  final String myCardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          myCardIcon,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          myCardText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
