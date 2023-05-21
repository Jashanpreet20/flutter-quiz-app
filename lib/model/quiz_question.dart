class QuizQuestion {

  const  QuizQuestion(this.text, this.answers);
  
  final String text;
  final List<String> answers;


  List<String> getShuffledAnswer()
  {
    List<String> shuffled=List.of(answers);
    shuffled.shuffle();
    return shuffled;
  }
}
