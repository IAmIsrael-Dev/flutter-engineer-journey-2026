var names = ['Alice', 'Bob', 'Charlie', 'David', 'Eve'];
List<int> age = [25, 30, 35, 40, 45];

void main() {
  List<String> skills = ['flutter', 'flutterflow', 'firebase'];

  skills.add('dart');

  // skills.remove(skills[1]);

  // print('Skills: $skills');

  // for (final skill in skills) {
  //   print(skill);
  // }

  // for (int i = 0; i < skills.length; i++){
  //   print(skills[i]);
  //   }

  for (final skill in skills) {
    print(skill.toUpperCase());
  }
}
