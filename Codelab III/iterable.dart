void main() {
  Iterable<String> items = ['Mary', 'John', 'Moro', 'Lola'];
  Iterable<String> results = items.where(
      (element) => element.startsWith('M') && element.contains('a'));

  if (results.length == 1) {
    String result = results.first;
    print(result);
  } else {
    print('No se encontró un elemento único que cumpla con las condiciones.');
  }
}
