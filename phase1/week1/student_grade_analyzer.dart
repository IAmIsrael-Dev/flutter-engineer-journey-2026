void main() {
  Map<String, int> studentGrades = {
    'Israel': 90,
    'Tommy': 70,
    'James': 35,
    'Matthew': 89,
    'David': 15,
  };

  studentGrades.forEach((key, value) {
    print('$key - $value - ${value >= 50 ? 'Psss' : 'Fail'}');
  });

  int totalScore = 0;

  for (final score in studentGrades.values.toList()) {
    totalScore += score;
  }
  ;

  print('Average score: ${totalScore / studentGrades.length}');

  List<int> studentScores = [...studentGrades.values];

  // print(
  //   'Highest score: ${studentScores.reduce((value, element) {
  //     if (value > element) {
  //       return value;
  //     } else {
  //       return element;
  //     }
  //   })} ',
  // );
  int highestScore = 0;
  String highestScorer = '';

  studentGrades.forEach((name, score) {
    if (score > highestScore) {
      highestScore = score;
      highestScorer = name;
    }
  });

  print('Highest score: $highestScore by $highestScorer');
}
