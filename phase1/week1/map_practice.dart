void main() {
  Map<String, int> scores = {'israel': 90, 'tommy': 70, 'james': 456};

  scores['matthew'] = 678;

  // scores.forEach((key, value) => print('$key, $value'));

  // print('israel score: ${scores['israel']}');

  List<int> scoreValues = [...scores.values];

  int totalScore = 0;

  for (final score in scoreValues) {
    totalScore += score;
  }
  ;

  print(totalScore / scoreValues.length);
}
