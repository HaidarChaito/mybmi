import 'package:mybmi/components/constants.dart';
import 'package:flutter/material.dart';

class RoundedCustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData? icon;
  const RoundedCustomButton({Key? key, this.onPressed, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: const CircleBorder(),
      fillColor: kButtonAddMinus,
      constraints: const BoxConstraints(
        minHeight: 56,
        minWidth: 56,
      ),
      elevation: 0,
      child: Icon(icon),
    );
  }
}
