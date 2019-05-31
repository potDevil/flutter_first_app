///Created by fuzhi on 2019-05-28

void main() {
  var utils = new Utils<String>();
  utils.put("1");

  var utils2 = new Utils2();
  utils2.put<String>("1");
}

class Utils<T> {
  T element;

  void put(T element) {
    this.element = element;
  }
}

class Utils2 {
  void put<T>(T element) {
    print(element);
  }
}
