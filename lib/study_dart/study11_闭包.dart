///Created by fuzhi on 2019-05-28

void main() {
  Function f = a();
  f();
  f();
  f();

  Function f2 = b();
  f2();
  f2();
  f2();
}

Function a() {
  int count = 0;

  printCount() {
    print(count++);
  }

  return printCount;
}

// 用匿名方法做闭包
Function b () {
  int count = 0;
  return () {
    print(count++);
  };
}