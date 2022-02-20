void main(List<String> args) {
  /**
   * unary postfix -> expr++    expr--    ()    []    ?[]    .    ?.
   * unary prefix -> -expr    !expr    ~expr    ++expr    --expr      await expr   
   * 
   *  For operators that take two operands, the leftmost operand 
   * determines which method is used. For example, if you have a Vector 
   * object and a Point object, then aVector + aPoint uses Vector addition * (+).
   * 
   * as 	Typecast (also used to specify library prefixes)
   * is 	True if the object has the specified type
   * is! 	True if the object doesn’t have the specified type
   */

  print(5 / 2);
  print(5 ~/ 2);
  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');

  // only assign is variable is null
  var name = "Prabhu";
  print(name);
  name ??= "Deva";
  print(name);

  //  Version note: The >>> operator (known as triple-shift or unsigned
  // shift) requires a language version of at least 2.14.

  // Conditional Operator
  var developer = name == "Prabhu" ? "Prabhu" : "Kannan";

  print(engineer(null));

  cascadeOperator("Vijay", 23);
}

String engineer(String? name) => name ?? 'Electronics';

class Employee {
  late String name;
  late int age;
}

void cascadeOperator(String name, int age) {
  Employee emp1 = new Employee()
    // ?..name = name if emp1 is null
    ..name = name
    ..age = age;

  print(emp1.name);
}
