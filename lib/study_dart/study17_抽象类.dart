///Created by fuzhi on 2019-05-28

void main() {
  Person p = new Student();
  p.run();
}

abstract class Person {
  void run();
}

class Student extends Person {
  @override
  void run() {
    // TODO: implement run
    print("runing...");
  }
}
