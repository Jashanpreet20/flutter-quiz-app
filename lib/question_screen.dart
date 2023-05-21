import 'package:demo/data/questions.dart';
import 'package:demo/style_button.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key,required this.onSelectedAnser});
  final void Function(String) onSelectedAnser;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  var currentIndex=0;

  void answerQuestion(String answer)
  {
    widget.onSelectedAnser(answer);
    setState(() {
      currentIndex++;
    });
  }
  @override
  Widget build(context) {
    var currentQuestion=questions[currentIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
             Text(
               
               currentQuestion.text,
              style: const TextStyle(fontSize: 20, color: Colors.greenAccent),
            ),
            
            ...currentQuestion.getShuffledAnswer().map((answer) {
              return AnswerButton(onTap: (){
                answerQuestion(answer);
              }, text: answer);
            })
            
          ],
        ),
      ),
    );
  }
}
