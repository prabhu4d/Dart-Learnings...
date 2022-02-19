void main() {
  const list = ['apples', 'bananas', 'oranges'];
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });

  // arrow function

  list.forEach((item) => print('${list.indexOf(item)}: $item'));
}
