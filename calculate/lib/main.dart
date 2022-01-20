import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // sliderTheme: SliderTheme.of(context).copyWith(
        //   activeTrackColor: Colors.white,
        //   thumbColor: const Color.fromRGBO(215, 39, 39, 1.0),
        //   overlayColor: const Color.fromRGBO(165, 36, 36, 0.30196078431372547),
        //   thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
        //   overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0),
        // ),
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      ),
      title: 'Flutter Demo',
      home:  const InputPage(),
    );
  }
}
