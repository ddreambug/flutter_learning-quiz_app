class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswer() {
    final shuffledAnswer = List.of(answers);
    shuffledAnswer.shuffle();

    return shuffledAnswer;
  }
}
