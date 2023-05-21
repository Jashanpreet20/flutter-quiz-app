import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  const StartScreen({super.key,required this.switchScren});
  final void Function() switchScren;
  @override
  Widget build(context)
  {
    return  Center(
      child: Column(
          mainAxisSize: MainAxisSize.min,
        children: [
              Image.asset('assets/images/quiz.png'),
              const SizedBox(height: 50,),
              const Text('lets learn flutter in fun way',style: TextStyle(color: Colors.purpleAccent,fontSize: 20),),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: switchScren , child: const Text('Start Quiz'))
            ],),
    );
  }
}