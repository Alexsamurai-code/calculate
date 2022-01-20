import 'package:flutter/material.dart';
import '../constans.dart';


class IconContent extends StatelessWidget {
  const IconContent({Key? key,required this.label,required this.icon}) : super(key: key);
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  <Widget>[
        Icon(
          icon,
          color: Colors.white70,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(label,style: kLaberTextStyle,),
      ],
    );
  }
}