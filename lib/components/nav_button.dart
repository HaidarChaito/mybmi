import 'package:mybmi/components/constants.dart';
import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final String txt;
  final VoidCallback onPressed;
  const NavButton(this.txt, this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Text(
          txt,
          style: kButtonLabelLarge,
          textAlign: TextAlign.center,
        ),
        padding: const EdgeInsets.only(top: 10),
        color: kBottonColor,
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 70,
      ),
    );
  }
}
