// Variables stores reference of the value

// if late is removed then dart will throw an error
late String description;

void main() {
  // while assigning data the variable get typed of the data, name is
  //string type
  var name = "Prabhu";
  // name = 1; you can't assign integer to string type variable name
  print("Name : $name");

  // if variable to be any type (dynamic) you assign Object type
  Object obj = "Dynamic";
  obj = 10;
  print("Object type => $obj");

  // the variable to be specific type
  String str = "Strongly Typed";
  print("String $str");

  // +++++++++++  DEFAULT VALUES
  int? number; // null value

  // null-safety, to use it, it should be value assigned
  int numbers;
  numbers = 10;

  print("null value $number");
  print("null safety $numbers");

  // ++++++++++++ LATE Variables
  /**
    Declaring a non-nullable variable that’s initialized after its 
    declaration.
    Lazily initializing a variable.  
  
  */
  // Two common cases are top-level variables and instance variables

  description = "Initiated Later";

  /**
   *    +++++++++ FINAL and CONST
   * 
   *   A final variable can be set only once; a const variable is a
   *   compile-time constant. (Const variables are implicitly final.)
   * 
   * 
   *   Instance variables can be final but not const.
   *   If the const variable is at the class level, mark it static const.
   * 
   *  The const keyword isn’t just for declaring constant variables. You 
   *  can also use it to create constant values, as well as to declare 
   *  constructors that create constant values. Any variable can have a 
   *  constant value.
   *  
   *  constant variable vs constant value
   *  compile time constants
   *  
   */
  final pi = 3.14;
  final String galaxy = "Runs on Gods Hand";

  // galaxy = "Nothing"; // You can’t change the value of a final variable:

  const pressure = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * pressure; // Standard atmosphere

  var foo = const [];
  final bar = const [];
  foo = [1, 2, 3];
  // bar = [1,2,4];

  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // Use a typecast.
  const map = {if (i is int) i: 'int'}; // Use is and collection if.
  const set = {if (list is List<int>) ...list}; // ...and a spread.
}
