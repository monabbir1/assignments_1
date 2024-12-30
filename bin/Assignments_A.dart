abstract class Role{
  void displayRole();
}

class Student implements Role{
  @override
  void displayRole() {
    print('I am student');
  }
}
class Teacher implements Role{
  @override
  void displayRole() {
    print('I am teacher');
  }
}

void main(){
  Role student = Student();
  Role teacher = Teacher();

  student.displayRole();
  teacher.displayRole();
}
