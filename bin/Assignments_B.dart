abstract class Role{
  void displayRole();
}

class Person implements Role{
  final String name;
  final int age;
  final String address;

  Person({
    required this.name,
    required this.age,
    required this.address,
});

  String get Name => name;
  int get Age => age;
  String get Address => address;

  @override
  void displayRole(){
      print('not specific role');
    }
  }

void main(){
  Person person = Person(name: 'Monabbir', age: 21, address: 'Dhaka');

  print("Name: ${person.name}");
  print("Age: ${person.age}");
  print("Age: ${person.address}");

  person.displayRole();
}