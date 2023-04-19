class Color {
  int red;
  int green;
  int blue;

  Color(this.red, this.green, this.blue);

  Color.black() : this(0, 0, 0);
}

void main() {
  // Crear una instancia de Color utilizando el constructor que toma argumentos
  Color color1 = Color(255, 0, 0);
  print(color1.red); // salida: 255
  print(color1.green); // salida: 0
  print(color1.blue); // salida: 0

  // Crear una instancia de Color utilizando el constructor con nombre "black"
  Color color2 = Color.black();
  print(color2.red); // salida: 0
  print(color2.green); // salida: 0
  print(color2.blue); // salida: 0
}
