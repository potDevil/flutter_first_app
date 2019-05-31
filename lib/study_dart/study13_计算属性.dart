///Created by fuzhi on 2019-05-28

void main() {
  Rectangle rectangle = Rectangle();
  rectangle.width = 10;
  rectangle.height = 5;

  print(rectangle.area);
  rectangle.area = 2;
  print(rectangle.width);
}

class Rectangle {
  double width;
  double height;

  num get area {
    return width * height;
  }

  set area(value) {
    width = 200 / value;
  }
}
