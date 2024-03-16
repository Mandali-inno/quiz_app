import 'package:flutter/material.dart';

class AddQuiz extends StatefulWidget {
  const AddQuiz({super.key});

  @override
  State<AddQuiz> createState() => _AddQuizState();
}

class _AddQuizState extends State<AddQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Quiz', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
      ),
      body: Container(
        child: Column(children: [
          Text('Uplad the Quiz Picture', )
        ]),
      )
    );
  }
}