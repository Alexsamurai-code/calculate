import 'package:flutter/material.dart';
import '../constans.dart';
class BottomBottom extends StatelessWidget {
  const BottomBottom({Key? key, required this.buttonTitle, required this.onTap})
      : super(key: key);
  final Function() onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColour,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLaberTextStyle,
          ),
        ),
      ),
    );
  }
}