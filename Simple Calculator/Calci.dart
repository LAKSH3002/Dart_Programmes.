import 'package:flutter/material.dart';
import 'package:my_basic_app/buttons.dart';
import 'package:math_expressions/math_expressions.dart';

void main(List<String> args) {
  runApp(const MyCalci());
}

class MyCalci extends StatelessWidget {
  const MyCalci({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userquestion = ' ';
  var userAnswer = ' ';

  final List<String> buttons = [
    'C','DEL','%','/',
    '9','8','7','*',
    '6','5','4','-',
    '3','2','1','+',
    '0','.','ANS','=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[100],
        body: Column(
          children: [
            Expanded(
                child: Container(
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                    // color: Colors.green,
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      userquestion,
                      style: const TextStyle(fontSize: 20),
                    )),
                Container(
                    // color: Colors.amber,
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child:
                        Text(userAnswer, style: const TextStyle(fontSize: 20)))
              ],
            ))),
            Expanded(
              flex: 2,
              child: Container(
                  child: GridView.builder(
                      itemCount: buttons.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                      itemBuilder: (BuildContext context, int index) {
                        // cancel button
                        if (index == 0) 
                        {
                          return MyButton(
                            buttonTap: () {
                              setState(() {
                                userquestion = '';
                              });
                            },
                            buttonText: buttons[index],
                            color: Colors.green,
                            textColor: Colors.white,
                          );
                        }
                        // delete button
                        else if (index == 1) {
                          return MyButton(
                            buttonTap: () {
                              setState(() {
                                userquestion = userquestion.substring(
                                    0, userquestion.length - 1);
                              });
                            },
                            buttonText: buttons[index],
                            color: Colors.red,
                            textColor: Colors.white,
                          );
                        } 

                       // Equal Button
                       else if (index == buttons.length-1) {
                          return MyButton(
                            buttonTap: () {
                              setState(() {
                                equalbutton();
                              });
                            },
                            buttonText: buttons[index],
                            color: Colors.deepPurple,
                            textColor: Colors.white,
                          );
                        }  
                        
                        else {
                          return MyButton(
                            buttonTap: () {
                              setState(() {
                                userquestion += buttons[index];
                              });
                            },
                            buttonText: buttons[index],
                            color: isOperator(buttons[index])
                                ? Colors.deepPurple
                                : Colors.deepPurple[50],
                            textColor: isOperator(buttons[index])
                                ? Colors.white
                                : Colors.deepPurple,
                          );
                        }
                      })),
            ),
          ],
        ));
  }

  bool isOperator(String x) {
    if (x == '%' || x == '/' || x == '*' || x == '-' || x == '+' || x == '=') {
      return true;
    } else {
      return false;
    }
  }

  void equalbutton()
  {
    String finalque = userquestion;
    Parser p = Parser();
    Expression exp = p.parse(finalque);

    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    userAnswer = eval.toString();
  }
}
