void main() {
  /**
   * 
   * Parameters
   */

  /**
   *  Named Parameters
   * named parameters are already optional, not null, you must define 
   * default value
   * 
   * to make named parameter must define require keyword before the named 
   * param 
   * 
   * 
   * */

  // enableFlags(bold: true, hidden: false);

  // const Scrollbar({Key? key, required Widget child})

  /**
   * Optional Positional Parameters
   * 
   * Wrapping a set of function parameters in [] marks them as optional 
   * positional parameters:
   * 
   * 
   */

  assert(say('Bob', 'Howdy') == 'Bob says Howdy');

  assert(say('Bob', 'Howdy', 'smoke signal') ==
      'Bob says Howdy with a smoke signal');

  print(add(10, 20));

  print(say("Prabhu", "How are you?"));

  doStuff();
}

void enableFlags({bool? bold, bool? hidden}) {
  //
}

String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

// Default Parameters values
/**
 * 
 * Note: You may use positional optional parameters or named optional 
 * parameters, but not both in the same function or method. The following 
 * is not allowed.
 * 
 * https://stackoverflow.com/questions/13264230/what-is-the-difference-between-named-and-positional-parameters-in-dart
 */

num add(num num1, [num num2 = 10]) {
  return num1 + num2;
}

void doStuff(
    {List<int> list = const [1, 2, 3],
    Map<String, String> gifts = const {
      'first': 'paper',
      'second': 'cotton',
      'third': 'leather'
    }}) {
  print('list:  $list');
  print('gifts: $gifts');
}
