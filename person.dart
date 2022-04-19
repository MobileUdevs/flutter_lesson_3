// interface

// A person. The implicit interface contains greet().
class Person {
  // In the interface, but visible only in this library.
  final String _name;

  // Not in the interface, since this is a constructor.
  Person(this._name);

  // In the interface.
  String greet(String who) => 'Hello, $who. I am $_name.';
}

// An implementation of the Person interface.
class Impostor implements Person {
  String get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');

void main() {
  // print(greetBob(Person('Kathy')));
  // print(greetBob(Impostor()));

  SmartTelevision smartTelevision = SmartTelevision();
  smartTelevision.contrast = 1;

  Television television = Television();
  television.contrast = 10;
}

class Television {
  // ···
  set contrast(int value) {
    print("$value");
  }
}

class SmartTelevision extends Television {
  @override
  set contrast(num value) {
    print(value);
  }
}
