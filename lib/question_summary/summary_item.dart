import 'package:flutter/material.dart';
import 'package:demo/question_summary/questioin_indetifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemdata, {super.key});
  final Map<String, Object> itemdata;
  @override
  Widget build(context) {
    final isCorrectAnswer =
        itemdata['user_answer'] == itemdata['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIndetifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemdata['question_index'] as int,
        ),
        const SizedBox(width: 20,),
         Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(itemdata['question'] as String,
                      style: const TextStyle(fontSize: 16,color: Colors.white),),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(itemdata['correct_answer'] as String,style: const TextStyle(color: Colors.green),),
                      Text(itemdata['user_answer'] as String,style: const TextStyle(color: Colors.redAccent),),
                    ],
                  ),
                )

      ],
    );
  }
}
