class MyDataObject {
  final int anInt;
  final String aString;
  final double aDouble;

  MyDataObject({
    this.anInt = 1,
    this.aString = 'Old!',
    this.aDouble = 2.0,
  });

  MyDataObject copyWith({int? newInt, String? newString, double? newDouble}) {
    return MyDataObject(
      anInt: newInt ?? this.anInt,
      aString: newString ?? this.aString,
      aDouble: newDouble ?? this.aDouble,
    );
  }
}

void main() {
  var data = MyDataObject(anInt: 10, aString: 'Hello', aDouble: 3.14);
  print(data.anInt); // Imprime "10"
  print(data.aString); // Imprime "Hello"
  print(data.aDouble); // Imprime "3.14"

  var newData = data.copyWith(newInt: 20, newDouble: 2.718);
  print(newData.anInt); // Imprime "20"
  print(newData.aString); // Imprime "Hello"
  print(newData.aDouble); // Imprime "2.718"
}
