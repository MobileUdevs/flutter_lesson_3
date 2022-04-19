abstract class Person {
  String? _name;
  int? _age;

  get name => _name;
  setName(String? value) => _name = value;

  get age => _age;
  setAge(int? value) => _age = value;
}

class Student extends Person {
  String? _faculty;

  get faculty => _faculty;
  setFaculty(String? value) => _faculty = value;
}

class Teacher extends Person {
  String? _gender;
  get gender => _gender;

  setGender(String? value) => _gender = value;
}

void main() {
  Student person = Student();
  person.setAge(20);
  person.setName("Bekzod");
  person.setFaculty("TELECOM");
  print(person.name);

  Teacher teacher = Teacher();
  teacher.setAge(20);
  teacher.setName("Azimjon");
  teacher.setGender("Male");
  print(teacher.name);
}
