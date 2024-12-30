abstract class Role {
  void displayRole();
}
class Person implements Role {
  final String name;
  final int age;
  final String address;

  Person({required this.name, required this.age, required this.address});

  String get getName => name;
  int get getAge => age;
  String get getAddress => address;

  @override
  void displayRole() {
    print('not specific role');
  }
}
class Student extends Person {
  final String studentID;
  final String grade;
  final List<double> courseScores;

  Student({
    required String name,
    required int age,
    required String address,
    required this.studentID,
    required this.grade,
    required this.courseScores,
  }) : super(name: name, age: age, address: address);

  @override
  void displayRole() {
    print("Role: Student");
  }
  double calculateAverageScore() {
    if (courseScores.isEmpty) {
      return 0.0;
    }
    double total = courseScores.reduce((a, b) => a + b);
    return total / courseScores.length;
  }
}

void main() {
  Student student = Student(
    name: 'Monabbir Hossain',
    age: 21,
    address: 'Dhaka ',
    studentID: "123456",
    grade: "A",
    courseScores: [4.50, 3.90, 4.66,],
  );

  print("Name: ${student.getName}");
  print("Age: ${student.getAge}");
  print("Address: ${student.getAddress}");
  print("Student ID: ${student.studentID}");
  print("Grade: ${student.grade}");

  student.displayRole();
  double averageScore = student.calculateAverageScore();
  print("Average Score: ${averageScore.toStringAsFixed(2)}");
}
