class Todo {
  final String name;
  final String address;
  const Todo(this.name,this.address);
}

@Todo("outman", "shanghai")
void doSomething () {
  print("city");
}

void main() {
  doSomething();

  var result = test();
  print(result(2.0));//结果为：12.56
}

Function test () {
  const PI = 3.14;
  return (double r) => r * r * PI;
}

