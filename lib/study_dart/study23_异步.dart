///Created by fuzhi on 2019-05-31

/// 两秒后执行某方法
main() {
  print("我是两秒前执行的哟");
  Future.delayed(new Duration(seconds: 2), () {
    print("我是两秒后执行的哟");
    return "11";
  }).then((data) {
    // 成功走then
    print(data);
  }).catchError((e) {
    // 失败走catchError
    print(e);
  }).whenComplete(() {
    // 无论成功或者失败必走
    print("我也不知道是成功还是失败");
  });
}
