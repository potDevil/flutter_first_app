///Created by fuzhi on 2019-05-28

void main() {
  var d = D ();
  d.a();
}

class A {
  void a() {
    print("A.a()...");
  }
}

class B {
  void b() {
    print("B.b()...");
  }
}

class C {
  void c() {
    print("C.c()...");
  }
}

// D 继承 A、B、C
class D extends A with B, C {}
