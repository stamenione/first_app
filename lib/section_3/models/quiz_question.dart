class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    // chaining - we are calling a method on a result of another method or function
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}