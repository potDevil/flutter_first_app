///Created by fuzhi on 2019-05-27

void main() {
  printPerson("李四");
  printPerson("李四", age: 13);
  printPerson("李四", age: 13, gender: "Male");

  printPerson2("张三");
  printPerson2("张三", 12);
  printPerson2("张三", 12, "Female");

  printPerson3(generator);
}

printPerson(String name, {int age = 30, String gender = "Female"}) {
  print("name = $name, age = $age, gender = $gender");
}

printPerson2(String name, [int age, String gender]) {
  print("name = $name, age = $age, gender = $gender");
}

printPerson3(generator(int index)) {

}

generator(int index){
  print(index);
}