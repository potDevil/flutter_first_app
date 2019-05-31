///Created by fuzhi on 2019-05-27

void main() {
  int a  = 10;
  int b = 2;

  print(a++);
  print(++a);
  print(a--);
  print(--a);

  // ??= 表示 如果b为空，则等于10，如果b有值，则不等于10
  b ??= 10;
  print("b = $b");

  a += 2;
  print(a);

}