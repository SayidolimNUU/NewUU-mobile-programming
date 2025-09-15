class Student {
  String name;
  int age;
  List<double> grades;

  Student(this.name, this.age, this.grades);

  double calculateAverageGrade() {
    if (grades.isEmpty) return 0.0;
    double sum = 0.0;
    for (var grade in grades) {
      sum += grade;
    }
    return sum / grades.length;
  }
}

void main() {
  var myStudent = Student('Alexei Kirillov', 30, [85, 85, 95, 90]);
  print('Name: ${myStudent.name}, Age: ${myStudent.age}, Avg: ${myStudent.calculateAverageGrade()}');
}
