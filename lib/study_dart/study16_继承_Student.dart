import 'package:flutter_app/study_dart/study16_%E7%BB%A7%E6%89%BF_Person.dart';

///Created by fuzhi on 2019-05-28

void main() {
  Student student = new Student();
  student.age = 122;
  student.name = "Google";

  student.toString();
  student.run();
  print(student.isAdult());
}

class Student extends Person {
  void study() {
    print("Student study....");
  }

//  void run() {
//    print("Student Run....");
//  }
}
