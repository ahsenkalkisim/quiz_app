import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Quiz is finished",
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 84, 238, 90)),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StartScreen(),
                      ));
                },
                child: const Text("Ana Sayfaya Geri Dön"))
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 96, 219, 100),
        title: const Text("Result Page"),
      ),
    );
  }
}
