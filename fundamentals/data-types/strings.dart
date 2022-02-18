void main() {
  /**
   * 
   * A Dart string (String object) holds a sequence of UTF-16 code units. 
   */

  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, '
          'which is very handy.');
  assert('That deserves all caps. '
          '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. '
          'STRING INTERPOLATION is very handy!');

  var s11 = 'String '
      'concatenation'
      " works even over line breaks.";
  assert(s11 ==
      'String concatenation works even over '
          'line breaks.');

  var s22 = 'The + operator ' + 'works, as well.';
  assert(s22 == 'The + operator works, as well.');

  var ms1 = '''
You can create
multi-line strings like this one.
''';

  var ms2 = """This is also a
multi-line string.""";

  var rs = r'In a raw string, not even \n gets special treatment.';
  /**
   * Literal strings are compile-time constants, as long as any 
   * interpolated expression is a compile-time constant that evaluates to 
   * null or a numeric, string, or boolean value.
   */

// These work in a const string.
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';

// These do NOT work in a const string.
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = [1, 2, 3];

  const validConstString = '$aConstNum $aConstBool $aConstString';
// const invalidConstString = '$aNum $aBool $aString $aConstList';
}
