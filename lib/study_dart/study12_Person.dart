///Created by fuzhi on 2019-05-28

// 加入下划线表示私有，外部访问不到
class Person {
  String name;
  int age;
  final String address = "shanghai";

  void work() {
    print("Name is $name, age is $age");
  }
}