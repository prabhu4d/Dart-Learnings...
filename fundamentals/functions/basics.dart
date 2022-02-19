void main() {
  var _nobleGases = {
    1: "He",
    2: "Ne",
  };

  bool isNoble(int atomicNumber) {
    return _nobleGases[atomicNumber] != null;
  }

  /**
   * you use declare function without type
   * 
   * 

  isNoble(atomicNumber) {
    return _nobleGases[atomicNumber] != null;
  }

   */

  /**
   * shorthand expression, arrow function
   * The => expr syntax is a shorthand for { return expr; }
   * 
   * it only supports expresion not statement
   * bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;
   * 
   */

  print(isNoble(3));
}
