var callbacks = [];
for (var i = 0; i < 2; i++) {
  callbacks.push(() => console.log(i));
}
callbacks.forEach((c) => c());
