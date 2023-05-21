import 'package:demo/data/questions.dart';
import 'package:demo/question_summary/questions_summary.dart';
import 'package:flutter/material.dart';


class ResultScreen extends StatelessWidget{
  const ResultScreen({super.key,required this.chooseAnswer,required this.onrestart});
  final List<String> chooseAnswer;
  final void Function() onrestart;

  List<Map<String,Object>> getSummaryData(){
    List<Map<String,Object>> summary=[];

   for(var i=0; i<chooseAnswer.length; i++)
   {
    summary.add({
      'question_index':i,
      'question':questions[i].text,
      'correct_answer':questions[i].answers[0],
      'user_answer':chooseAnswer[i]
    });
   }
    return summary;
  }
  @override
  Widget build(context)
  {
    var summarydata=getSummaryData();
    var totalquestion=questions.length;
    var correctquestion=summarydata.where((data) {
      return data['user_answer'] == data['correct_answer'];
  }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
              Center(child: Text('you are $correctquestion question correct out of $totalquestion',style: const TextStyle(fontSize: 20,color: Colors.white),)),
              const SizedBox(height: 20,),
              QuestionSummary(getSummaryData()),
              const SizedBox(height: 30,),
              Center(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.purple, minimumSize: const Size(30, 30)),
                  onPressed: onrestart, child: const Text('restart Quiz')),
              )
            
          ],
        ),
      ),
    );
  }
}