///Created by fuzhi on 2019-05-27

void main() {
  // 1.匿名方法
  var func = (str) {
    print("Hello + $str");
  };
  func("gogogo");

  // 2.真匿名
  (() {
    print("Test");
  })();

  // 3.匿名
  var list = ["h", "e", "l", "l", "o"];
  var list2 = listTimes(list, (str){return str * 4;});
  print(list2);
  print(listTimes2(list));
}

List listTimes(List list, String s(str)) {
  for (int i = 0; i < list.length; i++) {
    list[i] = s(list[i]);
  }
  return list;
}

List listTimes2(List list) {
  Function f = (str){return str * 5;};

  for (int i = 0; i < list.length; i++) {
    list[i] = f(list[i]);
  }
  return list;
}