///Created by fuzhi on 2019-05-31

main() {
  Future.wait(
    [
      Future.delayed(new Duration(seconds: 1), () {
        return "Hello";
      }),
      Future.delayed(new Duration(seconds: 3), () {
        return "World";
      })
    ],
  ).then((result) {
    print(result[0] + result[1]);
    // ignore: non_constant_identifier_names
  }, onError: (Error) {
    print(Error);
  });
}
