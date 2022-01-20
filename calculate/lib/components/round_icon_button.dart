import 'package:flutter/material.dart';
class KruglayKnopka extends StatelessWidget {
  const KruglayKnopka({
    required this.icon,
    required this.onPressed,
    Key? key,
  }) : super(key: key);
  final IconData icon;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 2.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: const Color.fromRGBO(38, 163, 84, 1.0),
      shape: const CircleBorder(),
      onPressed: onPressed,
    );
  }
}