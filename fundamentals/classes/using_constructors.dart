import 'dart:math';

void main(List<String> args) {
  // constructor can be ClassName or ClassName.identifier

  var p1 = Point(10, -7);
  // var p2 = Point.fromJson({'x': 1, 'y': 2});

  // new keyword
  var p3 = new Point(1, 5);

  // Some classes provide constant constructors. To create a compile-time
  // constant using a constant constructor, put the const keyword before
  // the constructor name:

  var cp1 = const Point(10, 20);
  print(cp1);
}
