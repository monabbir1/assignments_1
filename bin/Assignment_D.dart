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
class Teacher extends Person {
  final String teacherID;
  final List<String> coursesTaught;

Teacher({
    required String name,
    required int age,
    required String address,
    required this.teacherID,
    required this.coursesTaught,
  }) : super(name: name, age: age, address: address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCourses() {
    if (coursesTaught.isEmpty) {
      print("No courses assigned.");
    } else {
      print("Courses taught by $name:");
      for (var course in coursesTaught) {
        print("- $course");
      }
    }
  }
}

void main() {
  Teacher teacher = Teacher(
    name: "Abdullah",
    age: 40,
    address: "Dhaka University ",
    teacherID: "T12345",
    coursesTaught: ["Mathematics", "Physics", "Computer Science"],
  );

  print("Name: ${teacher.getName}");
  print("Age: ${teacher.getAge}");
  print("Address: ${teacher.getAddress}");
  print("Teacher ID: ${teacher.teacherID}");

  teacher.displayRole();
  teacher.displayCourses();
}
