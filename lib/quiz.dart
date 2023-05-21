import 'package:demo/data/questions.dart';
import 'package:demo/question_screen.dart';
import 'package:demo/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:demo/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState()
  {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz>
{
  var activeScreen='start-screen';
  List<String> selectedAnswer=[];

  void switchScren()
  {
    setState(() {
      activeScreen='question-screen';
    });
  }
  void restartQuiz()
  {
    setState(() {
      selectedAnswer=[];
      activeScreen='question-screen';
    });
  }
  void chooseAnswer(String answer)
  {
     selectedAnswer.add(answer);
    if(questions.length == selectedAnswer.length)
    {
      setState(() {
       // selectedAnswer=[];
        activeScreen='result-screen';
      });
    }
   
  }

  @override 
  Widget build(context)
  {
    Widget startWidget= StartScreen(switchScren: switchScren);
    if(activeScreen == 'question-screen')
    {
      startWidget= QuestionScreen(onSelectedAnser: chooseAnswer,);
    }
    if(activeScreen == 'result-screen')
    {
      startWidget =  ResultScreen(
      chooseAnswer: selectedAnswer,
      onrestart: restartQuiz);
    }
  

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration:const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromARGB(255, 3, 38, 67), Color.fromARGB(255, 3, 51, 90)],
                end: Alignment.topRight,
                begin: Alignment.topLeft),
          ),
          child: startWidget
        ),
      ),
    );
  }
}