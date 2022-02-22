void main(List<String> args) {
  /***
   * Dart provides Exception and Error types, as well as numerous predefined 
   * subtypes. You can, of course, define your own exceptions. However, Dart 
   * programs can throw any non-null object—not just Exception and Error 
   * objects—as an exception.
   */

  // throw Exception Object
  // throw FormatException('Expected at least 1 section');

  // you can also throw arbitary object
  // throw "It is Awesome";

  try {
    half_exception();
  } catch (e) {
    print("Exception at main function $e");
  }

  on_catch();
  //  Production-quality code usually throws types that implement Error or Exception.
}

void on_catch() {
  // to capture exception object use catch
  try {
    num div2 = 0 / 0;
    print(div2);
    throw "ZeroDivsionError";
  }
  // if you specify "on Exception" it only catches Exception Class Only, otherwise it accepts all
  // exceptions
  catch (e) {
    print("Exception Object $e");
  }

  // to handle specific exception use on
  try {
    num div1 = 0 / 0;
    print(div1);
    throw "ZeroDivsionError";
  } on Exception catch (e) {
    print("Exception Occured $e");
  } finally {
    print("Finally Done");
  }
}

void half_exception() {
  try {
    throw "Rethrow Exception to Caller";
  } catch (e) {
    print("Exception object $e passed to called function");
    rethrow;
  }
}
