///Created by fuzhi on 2019-05-27

void main() {
  Function func = printHello;
  func();

  print(printString);

  var list = [1, 2, 3, 4];
  list.forEach(print);

  var list2 = ["h", "e", "l", "l", "o"];
  print(listTimes(list2, times));
}

void printHello() {
  print("Hello");
}

String printString() {
  return "printString";
}

List listTimes(List list, String s(str)) {
  for (int i = 0; i < list.length; i++) {
    list[i] = s(list[i]);
  }
  return list;
}

String times(str) {
  return str * 3;
}
