class Students {
  final List<Map<String, String>> people;

  Students(this.people);

  void sort(String field) {
    people.sort((Map<String, String> a, Map<String, String> b) {
      return a[field]!.compareTo(b[field]!);
    });
  }

  void output() {
    for (Map<String, String> student in people) {
      print(student);
    }
  }

  void plus(Map<String, String> newStudent) {
    people.add(newStudent);
  }

  void remove(String field, String value) {
    people.removeWhere((Map<String, String> student) {
      return student[field] == value;
    });
  }
}
