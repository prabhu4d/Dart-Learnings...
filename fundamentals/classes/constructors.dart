void main(List<String> args) {
  var employee = Employee.fromJson({});
  print(employee);

  var logger = Logger('UI');
  logger.log('Button clicked');

  var logMap = {'name': 'UI'};
  var loggerJson = Logger.fromJson(logMap);
}

class Point {
  double x = 0;
  double y = 0;

  Point(double x, double y) {
    // There's a better way to do this, stay tuned.
    // The this keyword refers to the current instance.

    this.x = x;
    this.y = y;
  }

  // The pattern of assigning a constructor argument to an instance variable
  // is so common, Dart has syntactic sugar to make it easy:

  // Point(this.x, this.y);
}

/***
 * Default Constructor
 * 
 * If you don’t declare a constructor, a default constructor is provided for 
 * you. The default constructor has no arguments and invokes the no-argument 
 * constructor in the superclass.
 */

/**
 * 
 * Constructors aren’t inherited
 * 
 * Subclasses don’t inherit constructors from their superclass. A subclass 
 * that declares no constructors has only the default (no argument, no name) 
 * constructor.
 */

// Named constructors
// Use a named constructor to implement multiple constructors for a class or
// to provide extra clarity:

const double xOrigin = 0;
const double yOrigin = 0;

class Line {
  double x = 0;
  double y = 0;

  Line(this.x, this.y);

  // Named constructor
  Line.origin()
      : x = xOrigin,
        y = yOrigin;
}

/**
 * 
 * Invoking a non-default superclass constructor
 * 
 * By default, a constructor in a subclass calls the superclass’s unnamed, 
 * no-argument constructor. The superclass’s constructor is called at the 
 * beginning of the constructor body. If an initializer list is also being 
 * used, it executes before the superclass is called. In summary, the order 
 * of execution is as follows:
 * 
 * 
    1. initializer list
    2. superclass’s no-arg constructor
    3. main class’s no-arg constructor



 */

class Person {
  String? firstName;

  Person.fromJson(Map data) {
    print('in Person');
  }
}

class Employee extends Person {
  // Person does not have a default constructor;
  // you must call super.fromJson(data).
  Employee.fromJson(Map data) : super.fromJson(data) {
    print('in Employee');
  }
}

// Initializer list
// Besides invoking a superclass constructor, you can also initialize
// instance variables before the constructor body runs. Separate initializers
// with commas.

class Rect {
  num x = 0;
  num y = 0;
// Initializer list sets instance variables before
// the constructor body runs.
  Rect.fromJson(Map<String, double> json)
      : x = json['x']!,
        y = json['y']! {
    print('In Point.fromJson(): ($x, $y)');
  }

  /**
   * 
   * 
    
      Point.withAssert(this.x, this.y) : assert(x >= 0) {
      print('In Point.withAssert(): ($x, $y)');
    }

   */
}

// Redirecting constructors
// Sometimes a constructor’s only purpose is to redirect to another constructor in the same class. A redirecting constructor’s body is empty, with the constructor call (using this instead of the class name) appearing after a colon (:).

class Circle {
  double x, y;

  // The main constructor for this class.
  Circle(this.x, this.y);

  // Delegates to the main constructor.
  Circle.alongXAxis(double x) : this(x, 0);
}

// Constant constructors
// If your class produces objects that never change, you can make these objects compile-time constants. To do this, define a const constructor and make sure that all instance variables are final.

class ImmutablePoint {
  static const ImmutablePoint origin = ImmutablePoint(0, 0);

  final double x, y;

  const ImmutablePoint(this.x, this.y);
}

// Constant constructors don’t always create constants. For details, see the section on using constructors.

// Factory constructors
// Use the factory keyword when implementing a constructor that doesn’t always create a new instance of its class. For example, a factory constructor might return an instance from a cache, or it might return an instance of a subtype. Another use case for factory constructors is initializing a final variable using logic that can’t be handled in the initializer list.

// In the following example, the Logger factory constructor returns objects from a cache, and the Logger.fromJson factory constructor initializes a final variable from a JSON object.

class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}


//  Note: Factory constructors have no access to this.
