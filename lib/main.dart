import 'package:mybmi/screens/input_screen.dart';
import 'package:mybmi/screens/results_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color(0xff0a0e21),
          primaryColor: const Color(0xff0a0e21),
          appBarTheme: const AppBarTheme(color: Color(0xff0a0e21))),
      home: const InputPage(),
    );
  }
}
