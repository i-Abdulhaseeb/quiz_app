class QuizQuestions {
  const QuizQuestions(this.questionsofQuiz, this.answers);
  final String questionsofQuiz;
  final List<String> answers;

  List<String> ShuffleAnswers() {
    List<String> ShuffledAnswers = List.of(answers);
    ShuffledAnswers.shuffle();
    return ShuffledAnswers;
  }
}
