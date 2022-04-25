import 'package:flutter/material.dart';

class MyCustomCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  final VoidCallback? onTapped;
  const MyCustomCard(this.colour, {Key? key, this.cardChild, this.onTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(15),
      ),
    );
  }
}
