void main() {
  /**
   * 
   * Dart’s type safety means that you can’t use code like if 
   * (nonbooleanValue) or assert (nonbooleanValue). Instead, explicitly 
   * check for values, like this:
   */

  var name = '';

  // if (name) print("String can't checked");
  if (name == '') print("Boolean Checked");

// Check for an empty string.
  var fullName = '';
  assert(fullName.isEmpty);

// Check for zero.
  var hitPoints = 0;
  assert(hitPoints <= 0);

// Check for null.
  var unicorn;
  assert(unicorn == null);

// Check for NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);
}
