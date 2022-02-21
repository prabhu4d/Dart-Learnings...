void main(List<String> args) {
  int i = 0;
  while (i < 5) {
    print("while $i");
    i++;
  }

  i = 0;

  do {
    print("do while $i");
    i++;
  } while (i < 5);
}
