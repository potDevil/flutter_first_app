///Created by fuzhi on 2019-05-28

main () {
  Student s = new Student();
  s.run();
  print(s.age);
}

class Person{
  String name;

  int get age => 18;

  void run() {
    print("Person Run..");
  }
}

class Student implements Person {
  @override
  String name;

  @override
  int get age => 19;

  @override
  void run() {
    print("Student Run...");
  }

}