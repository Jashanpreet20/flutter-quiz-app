import 'package:flutter/material.dart';

class QuestionIndetifier extends StatelessWidget{
  const QuestionIndetifier({super.key,required this.isCorrectAnswer,required this.questionIndex});
  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(context)
  {
    final questionNumber=questionIndex+1;
    return Container(height: 30,width: 30,
    alignment: Alignment.center,
      decoration: BoxDecoration(color: isCorrectAnswer
        ? Color.fromARGB(255, 3, 124, 7) 
        : Color.fromARGB(255, 155, 12, 2),
        borderRadius: BorderRadius.circular(100)),
        child: Text(questionNumber.toString(),
        style: const TextStyle(fontWeight: FontWeight.bold,
        color: Colors.blueAccent),),
      );
  }
}