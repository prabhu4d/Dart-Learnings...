void main() {
  /***
   * 
   * int, double
   * 
   * both are subclass of num type
   */

  // int
  var x = 1;
  var hex = 0xDFE34;
  var exponent = 8e8;

  // double
  var y = 1.1;
  var exponents = 1.1e3;

  y = 2;
  print("$y"); // y always double

  // num variable can have both integer and double values
  num num1 = 10.10;
  print("$num1"); // double
  num1 = 1;
  print("$num1"); // int
  num1 += 2.2;
  print("$num1"); // float

  // type casting

  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 | 4) == 7); // 0011 | 0100 == 0111
  assert((3 & 4) == 0); // 0011 & 0100 == 0000

  /**
   * Literal numbers are compile-time constants. Many arithmetic 
   * expressions are also compile-time constants, as long as their 
   * operands are compile-time constants that evaluate to numbers.
   */

  const msPerSecond = 1000;
  const secondsUntilRetry = 5;
  const msUntilRetry = secondsUntilRetry * msPerSecond;
}
