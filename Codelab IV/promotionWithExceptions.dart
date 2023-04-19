int getLength(String? str) {
  // Try throwing an exception here if `str` is null.
  if (str == null) {
    throw ArgumentError("El argumento 'str' no puede ser nulo.");
  }

  return str.length;
}

void main() {
  print(getLength(null));
}
