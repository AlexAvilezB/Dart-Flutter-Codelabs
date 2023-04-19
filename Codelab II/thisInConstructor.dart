class MyClass {
  final int anInt;
  final String aString;
  final double aDouble;

  MyClass(this.anInt, this.aString, this.aDouble);
}

void main() {
  var myInstance = MyClass(42, "Hello world", 3.14);
  print(myInstance.aDouble);
}
