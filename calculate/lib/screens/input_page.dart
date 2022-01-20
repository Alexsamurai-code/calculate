import 'results_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../constans.dart';
import '../components/bottom_botton.dart';
import '../components/round_icon_button.dart';
import 'package:calculate/calculator_brain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
   const InputPage({Key? key}) : super(key: key);
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.female;
  int weight = 60;
  int height = 180;
  int age = 30;

  // Color maleCardColor = inactiveCardColour;
  // Color femaleCardColour = inactiveCardColour;
  // void updateColour(Gender selectedGender){
  //   if (selectedGender == Gender.male){
  //     if(maleCardColor == inactiveCardColour){
  //       maleCardColor = activeCardColour;
  //       femaleCardColour = inactiveCardColour;
  //     }else{
  //       maleCardColor = inactiveCardColour;
  //     }
  //   }
  //   if (selectedGender == Gender.female){
  //     if(femaleCardColour == inactiveCardColour){
  //       femaleCardColour = activeCardColour;
  //       maleCardColor = inactiveCardColour;
  //     }else{
  //       femaleCardColour = inactiveCardColour;
  //     }
  //   }
  // }
  // void updateColour(int gender){
  //   if (gender == 1){
  //     if(maleCardColor == inactiveCardColour){
  //       maleCardColor = activeCardColour;
  //       femaleCardColour = inactiveCardColour;
  //     }else{
  //       maleCardColor = inactiveCardColour;
  //     }
  //   }
  //   if (gender == 2){
  //     if(femaleCardColour == inactiveCardColour){
  //       femaleCardColour = activeCardColour;
  //       maleCardColor = inactiveCardColour;
  //     }else{
  //       femaleCardColour = inactiveCardColour;
  //     }
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white70,
        backgroundColor:  const Color.fromRGBO(31, 59, 111, 1.0),
        title:  const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild:  const IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'МУЖЧИНА',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild:  const IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'ЖЕНЩИНА',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              onPress: () {},
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   const Text(
                    'РОСТ',
                    style: kLaberTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                       const Text(
                        'cm',
                        style: kLaberTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Colors.white70,
                      activeTrackColor: Colors.white,
                      thumbColor: const Color.fromRGBO(215, 39, 39, 1.0),
                      overlayColor: const Color.fromRGBO(
                          165, 36, 36, 0.30196078431372547),
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 1.0,
                      max: 220.0,
                      // activeColor: Colors.white,

                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                          // print(newValue);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                         const Text(
                          'МАССА',
                          style: kLaberTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            KruglayKnopka(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 30.0,
                            ),
                            KruglayKnopka(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                         const Text(
                          'ВОЗРАСТ',
                          style: kLaberTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            KruglayKnopka(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 30.0,
                            ),
                            KruglayKnopka(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomBottom(
            buttonTitle: 'Посмотреть результат',
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height:height,weight: weight);
//weight: weight, height: height
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiResult: calc.getBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretaton(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
