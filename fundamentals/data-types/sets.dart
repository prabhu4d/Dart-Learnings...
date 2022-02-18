void main() {
  /**A set in Dart is an unordered collection of unique items. Dart 
   * support for sets is provided by set literals and the Set type. 
   * */

  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

  // To create an empty set, use {} preceded by a type argument, or assign
  // {} to a variable of type Set:

  var names = <String>{};
// Set<String> names = {}; // This works, too.
// var names = {}; // Creates a map, not a set.

  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  assert(elements.length == 5);

  // compile-time constants

  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
// constantSet.add('helium'); // This line will cause an error.
}
