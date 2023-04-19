class Color {
  int red;
  int green;
  int blue;

  Color(this.red, this.green, this.blue);

  Color.black()
      : red = 0,
        green = 0,
        blue = 0;
}

void main() {
  var myColor = Color(255, 0, 0); // crea un color rojo
  print(myColor.red);
}
