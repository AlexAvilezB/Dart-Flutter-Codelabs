String? foo = 'a string';
String? bar;

// Substitute an operator that makes 'a string' be assigned to baz.
String? baz = foo ?? bar;

void updateSomeVars() {
  // Substitute an operator that makes 'a string' be assigned to bar.
  bar ??= 'a string';
  print(bar);
}

void main() {
  print(bar);
  print(baz);
  updateSomeVars();
}
