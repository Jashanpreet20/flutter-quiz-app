import 'package:flutter/material.dart';


class AnswerButton extends StatelessWidget{
  const AnswerButton({super.key,required this.onTap, required this.text});
  final void Function() onTap;
  final String text;
  @override
  Widget build(context)
  {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(foregroundColor: Colors.purpleAccent,backgroundColor: const Color.fromARGB(255, 6, 43, 107),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40)),
      onPressed:onTap, child: Text(text));
  }
}