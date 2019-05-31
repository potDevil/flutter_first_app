///Created by fuzhi on 2019-05-28

void main() {
  var p = new Person();
  p("Call", 13);
}

class Person {
  String name;
  int age;

  void call(String name, int age) {
    print("name = $name, age = $age");
  }
}
