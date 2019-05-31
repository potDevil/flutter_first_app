void main() {
  /**
   * $的用法
   */
  var height = 48;
  print("我今年$height");

  /**
   * """ 的用法
   */
  var str1 = """我是第一行
我是第二行
我是第三行""";
  print(str1);

  /**
   * assert断言的用法
   */
  var str2 = "Android Studio";
  assert('你好' + '${str2.toUpperCase()}' == '你好ANDROID STUDIO');

  /**
   * 捕获断言
   */
  try {
    assert(str2 == null);
  } catch (E) {
    print("输入错误了");
  }

  /**
   * list的用法 list = 数组
   */
  List list = [1, 2, 3];
  print(list);

  /**
   * list添加
   */
  list.add(4);
  print(list);

  /**
   * list移除
   */
  list.remove(1);
  print(list);

  /**
   * list第一个位置插入100
   */
  list.insert(1, 100);
  print(list);

  /**
   * 查找list中100所在的索引
   */
  print(list.indexOf(100));

  /**
   * 判断list是否包含某元素
   */
  print(list.contains(3));

  /**
   * map初始化
   */
  Map map = {'first': '苹果', 'second': '华为', 'third': '三星'};
  map['first'] = 'apple';
  print(map);

  /**
   * map先声明，再赋值
   */
  Map map2 = new Map();
  map2['first'] = '苹果';
  map2['second'] = '华为';
  map2['third'] = '三星';
  print(map2);

  /**
   * 常量map
   */
  final Map map3 = const {'first': 'apple', 'second': 'hauwei', 'third': 'Samsung'};
//  map3['fourth'] = '小米'; 不可以修改，会报错
  print(map3);

  /**
   * 判断Map中的key/value
   */
  bool b1 = map3.containsKey('first');
  bool b2 = map3.containsValue('苹果');
  print(b1);
  print(b2);

  /**
   * 移除Map中某个键值与所有键值
   */
  map.remove('second');
  print(map);
  map2.clear();
  print(map2);

  /**
   * Runes用法
   */
  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(input));

  /**
   * 运算符
   */
  print(5/2);

  /**
   * ?.表示Test可以为空
   */
  print(Test1?.funs);

  /**
   * .. 相当于Java的链式调用
   */
  String str3 = (new StringBuffer()
  ..write("中国")
  ..write("与")
  ..write("美国")
  ..write("正在")
  ..write("贸易战")).toString();
  print(str3);

  /**
   * str4??str5 表示如果str4不为null，则取str4，如果str4为null，则取str5
   */
  String str4 = null;
  String str5 = "取值2";
  print(str4??str5);

  /**
   * / 这个除以返回的是一个带小数的数(和Java不同)， ~/ 返回的是一个整数， % 取余数
   */
  int i1 = 15;
  int i2 = 7;
  print(i1/i2);
  print(i1~/i2);
  print(i1%i2);

  /**
   * is 如果对象具有指定的类型，则为true
   * as 判断属于某种类型
   */
  Test1 test1 = new Test1();
  Test2 test2 = new Test2();
  print(test2 is Test1);
  print(test1 is Test2);
  (test2 as Test2).fun();
}

class Test1{
  static int funs = 5;

  void fun() {}
}

class Test2 extends Test1 {
  void fun() {
    print('Test2 fun函数');
  }
}



