///Created by fuzhi on 2019-05-27

void main() {
  num a = 10;
  a = 10.5;

  int b = 20;
//  b = 10.5;

  double c = 10.5;
  c = 10;

  print(c);

  String s = "this!is!my!favorite!girl";
  var split = s.split("!");
  print(split);
  for (int i = 0; i < split.length; i++) {
    print(split[i]);
  }

  var map = {"first": "Dart", "second": "Java", "third": "Python"};
  print(map.length);
  print(map.keys);
  print(map.values);
  print(map.containsKey("first"));
  print(map.containsValue("C"));
  map.remove("second");
  print(map);
  map.forEach(f);

  var list = ["1", "2", "3"];
  print(list.asMap());
}

void f(key, value) {
  print("key = $key, value = $value");
}
