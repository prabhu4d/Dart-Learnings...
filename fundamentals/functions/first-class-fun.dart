void main() {
  var list = [1, 2, 3];

// Pass printElement as a parameter.
  list.forEach(printElement);

  print(loudify("ammu"));
}

void printElement(int element) {
  print(element);
}

var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
