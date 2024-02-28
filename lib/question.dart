import 'package:flutter/material.dart';
import 'package:quiz_app/qstns.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  List Questionset = [
    Quiz(qstn: 'An atom is the smallest particle.', ans: false),
    Quiz(qstn: 'Boiling water is 100 degrees Celsius.', ans: true),
    Quiz(qstn: 'Butterflies taste things with their wings.', ans: false),
    Quiz(qstn: 'Scotland’s national animal is a unicorn.', ans: true),
    Quiz(
        qstn:
            'The record for the tallest human in the world is almost 9 feet tall.',
        ans: true),
    Quiz(qstn: 'The sun is not a star.', ans: false),
    Quiz(
        qstn: 'Three strikes in a row in bowling is called an eagle.',
        ans: false),
    Quiz(qstn: ' An octopus has one heart.', ans: false),
    Quiz(qstn: 'Ants can hold up to 5,000 times their body weight.', ans: true),
    Quiz(qstn: ' Bats are blind.', ans: false),
  ];
  int index = 0;
  void nextQ() {
    if (index < Questionset.length) {
      index++;
    }
    setState ((){});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Questionset[index].qstn,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 60),
              TextButton(
                  onPressed: () {
                    nextQ();
                  },
                  style: (TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    fixedSize: Size(90, 40),
                  )),
                  child: Text('True',
                      style: TextStyle(
                        color: Colors.white,
                      ))),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  nextQ();
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  fixedSize: Size(90, 40),
                ),
                child: Text(
                  'False',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
