import 'package:calculator/elements/myButton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var userQuestion = '';
  var userAnswer = '';

  final List<String> buttonList = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    '*',
    '6',
    '5',
    '4',
    '+',
    '3',
    '2',
    '1',
    '-',
    '0',
    '.',
    'SIFIRLA',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(
        children: [resultArea(), buttonsArea()],
      ),
    );
  }

  Expanded resultArea() {
    return Expanded(
        child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 10),
              child: Text(
                userQuestion,
                style: TextStyle(fontSize: 30),
              )),
          Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 10),
              child: Text(
                userAnswer,
                style: TextStyle(fontSize: 30),
              )),
        ],
      ),
    ));
  }

  Expanded buttonsArea() {
    return Expanded(
        flex: 2,
        child: Container(
          color: Colors.deepPurple[500],
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemCount: buttonList.length,
            itemBuilder: (context, index) {
              var buttonText = buttonList[index];
              if (buttonText == '=') {
                return MyButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    buttonText: buttonText,
                    buttonTop: () {
                      setState(() {
                        equalPressed();
                      });
                    });
              } else if (buttonText == 'SIFIRLA') {
                return MyButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    buttonText: buttonText,
                    buttonTop: () {
                      setState(() {
                        userAnswer = '';
                        userQuestion = '';
                      });
                    });
              } else {
                return MyButton(
                    buttonTop: () {
                      setState(() {
                        if (buttonText == 'C') {
                          userQuestion = '';
                        } else if ((buttonText == 'DEL') &&
                            (userQuestion.isNotEmpty)) {
                          userQuestion = userQuestion.substring(
                              0, userQuestion.length - 1);
                        } else if (buttonText != 'DEL') {
                          userQuestion += buttonText;
                        }
                      });
                    },
                    color: isOparationButton(buttonText)
                        ? Colors.purpleAccent
                        : Colors.orange,
                    textColor: Colors.white,
                    buttonText: buttonText);
              }
            },
          ),
        ));
  }

  void equalPressed() {
    var finalQuestion = userQuestion;
    try {
      Parser p = Parser();
      Expression exp = p.parse(finalQuestion);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      userAnswer = eval.toString();
    } catch (e) {
      userAnswer = "İŞLEMLER ARASINDA SAYI OLMALI";
    }
  }
}

isOparationButton(String x) {
  if (x == '%' ||
      x == '/' ||
      x == '*' ||
      x == '+' ||
      x == '-' ||
      x == '=' ||
      x == 'C' ||
      x == 'DEL' ||
      x == 'ANS' ||
      x == '.') {
    return true;
  }
  return false;
}
