///Created by fuzhi on 2019-05-28

class Person {
  String name;
  int age;

  bool isAdult() => age > 16;

  void run() {
    print("Person Run....");
  }

  @override
  // ignore: missing_return
  String toString() {
    print("Studen name: $name, age : $age");
  }
}
