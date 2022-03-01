void main(List<String> args) {
  /**
   * 
   * All instance variables generate an implicit getter method
   * 
   *  Non-final instance variables and late final instance variables without 
   * initializers also generate an implicit setter method.
   * 
   * If you initialize a non-late instance variable where it’s declared, the 
   * value is set when the instance is created, which is before the 
   * constructor and its initializer list execute.
   * 
   * 
   */

  var point = Point();
  point.x = 4; // setter method
  assert(point.x == 4); // getter method
  assert(point.y == null);
}

class Point {
  double? x; // Declare instance variable x, initially null.
  double? y; // Declare y, initially null.
  double z = 0; // Declare z, initially 0.
}

/**
 * Instance variables can be final, in which case they must be set exactly 
 * once. Initialize final, non-late instance variables at declaration, using 
 * a constructor parameter, or using a constructor’s initializer list:
 * 
 * 
 */

class ProfileMark {
  final String name;
  final DateTime start = DateTime.now();

  ProfileMark(this.name);
  ProfileMark.unnamed() : name = '';
}

/**
 * 
 * If you need to assign the value of a final instance variable after the 
 * constructor body starts, you can use one of the following:
 * 
 * 
 *  1. Use a factory constructor.
 *  2. Use late final, but be careful: a late final without an initializer 
 *  adds a setter to the API.
 * 
 */