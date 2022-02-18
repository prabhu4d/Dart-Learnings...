void main() {
  /**
   * Perhaps the most common collection in nearly every programming 
   * language is the array, or ordered group of objects. In Dart, arrays 
   * are List objects, so most people just call them lists.
   */

  var list = [
    'Car',
    'Boat',
    'Plane',
  ];

  // To create a list that’s a compile-time constant, add const before the
  // list literal:

  var varList = [1, 2, 3];

  var constantList = const [1, 2, 3];
  // constantList[1] = 100;
  print(varList[1] = 10);
  print(varList);
  /***
   * Dart 2.3 introduced the spread operator (...) and the null-aware 
   * spread operator (...?), which provide a concise way to insert 
   * multiple values into a collection.
   */

  var list1 = [1, 2, 3];
  var list2 = [0, ...list1];
  assert(list2.length == 4);

  // to avoid null exception use ...?

  var list11;
  var list22 = [0, ...?list11];
  assert(list22.length == 1);

  // collection if
  var promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

  // collection for

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
}
