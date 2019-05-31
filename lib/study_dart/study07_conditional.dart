///Created by fuzhi on 2019-05-27

main () {
  int gender = 1;
  String str = gender == 0 ? "是0" : "不是0";
  print(str);

  String a = "Dart";
  String b = "Java";
  // ?? 表示如果a为null，则c=b，如果不为null，则c=a
  String c = a ?? b;
  print(c);
  print(getPerson("hah", 12));
}

getPerson(name, age) => "name = $name";