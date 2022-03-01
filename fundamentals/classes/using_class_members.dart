import 'dart:math';

void main(List<String> args) {
  // members -> instance variables and methods, can be accessed by dot
  // operator
  var p = Point(2, 2);

  assert(p.y == 2);

  double distance = p.distanceTo(Point(3, 4));

  // Use ?. instead of . to avoid an exception when the leftmost operand is
  // null:

  // var a = p?.y;
}
