void main() {
  // 以下两种描述是等价的： even 是偶数
  // 使用 continue
  for (int i = 0; i < 10; i++) {
    if (i.isEven) continue;
    print(i);
  }

  // 使用 break.
  for (int i = 0; i < 10; i++) {
    labels:
    {
      // isEven 当且仅当该整数为偶数时才返回true
      if (i.isEven) break labels;
      print(i);
    }
  }

  int foo = 1;
  switch (foo) {
    case 0:
      print("foo is 0");
      break;
    case 1:
      print("foo is 1");
      continue shared; // Continue使用在被标记为shared的子句中
    shared:
    case 2:
      print("foo is either 1 or 2");
      break;
  }

  /**
   * String 可以用==号比较
   */
  var str1 = "hello";
  var str2 = "hello";
  print(str1 == str2);

  /**
   * try catch使用
   */
  try {
    dynamic foo = true;
    print(foo++); // 运行时异常
  } catch (e, s) {
    print('misbehave() partially handled ${e.runtimeType}.');
    print('Stack trace:\n $s'); // s:可以查看stack的情况
    rethrow; // 允许调用者查看exception.
  }
}
