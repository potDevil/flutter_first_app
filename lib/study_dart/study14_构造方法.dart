///Created by fuzhi on 2019-05-28

void main() {
//  var p = Person("Tom", 13, "上海");
//  p.work();
//
//  p
//    ..name = "Tomaa"
//    ..age = 20
//    ..work();

  Map map = {"address": "beijing", "name": "devil"};
  var person = Person.withName(map);
  print(person.name);
  print(person.address);
}

class Person {
  String name;
  int age;
  final String address;

  // 这种语法糖的方式可以使final字段也被改变
//  Person(this.name, this.age, this.address);

  // 初始化列表
  Person.withName(Map map) : address = map["address"] {
    this.name = map["name"];
  }

//  void work() {
//    print("name = $name, age = $age, address = $address is working");
//  }
}
