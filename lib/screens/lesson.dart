import 'package:flutter/material.dart';
import '../data/python_course.dart';

class LessonScreen extends StatefulWidget {
  @override
  _LessonScreenState createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  int index = 0;
  int xp = 0;
  int vidas = 5;

  void responder(String escolha) {
    if (escolha == pythonQuestions[index].answer) {
      xp += 10;
    } else {
      vidas--;
    }

    if (index < pythonQuestions.length - 1) {
      setState(() => index++);
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    var q = pythonQuestions[index];

    return Scaffold(
      backgroundColor: Colors.green[400],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("XP: $xp"),
          Text("❤️: $vidas"),
          SizedBox(height: 20),
          Text(q.question),
          ...q.options.map((o) => ElevatedButton(
                onPressed: () => responder(o),
                child: Text(o),
              ))
        ],
      ),
    );
  }
}
