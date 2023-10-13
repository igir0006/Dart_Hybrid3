import 'dart:convert';
import 'package:exercise3/exercise3.dart';

void main() {
  String json = '''
  [
    {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
    {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
    {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
    {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
  ]
  ''';

  List<Map<String, String>> studentList = (jsonDecode(json) as List)
      .map((item) => Map<String, String>.from(item))
      .toList();

  Students studentsGroup = Students(studentList);

  print("Original List:\n");
  studentsGroup.output();

  studentsGroup.sort('first');
  print("\nSorted by 'first' name:\n");
  studentsGroup.output();

  studentsGroup.plus({
    "first": "Tyler",
    "last": "Bristow",
    "email": "bristot@algonquincollege.com"
  });
  print("\nAfter adding Tyler:\n");
  studentsGroup.output();

  studentsGroup.remove('first', 'Tony');
  print("\nAfter removing Tony:\n");
  studentsGroup.output();
}
