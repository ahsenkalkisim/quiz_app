import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/main.dart';
import 'package:quiz_app/result_screen.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}
class _QuestionState extends State<QuestionScreen> {
  int questionNumber = 0;

  void changeQuestion() {
    setState(() {
      questionNumber++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(questions[questionNumber].question),
            ...questions[questionNumber].answers.map((answer) {
              return ElevatedButton(
                onPressed: () {
                  if (questionNumber < 3) {
                    changeQuestion();
                  }
                  else if (questionNumber == questions.length - 1) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ResultScreen()),
                      );

                  }
                },
                child: Text(answer),
              );
            })
          ],
        ),
      ),
    );
  }
}