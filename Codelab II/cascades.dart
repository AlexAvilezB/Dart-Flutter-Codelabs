class BigObject {
  int anInt = 0;
  String aString = '';
  List<double> aList = [];
  bool _done = false;

  void allDone() {
    _done = true;
  }
}

BigObject fillBigObject(BigObject obj) {
  return obj
    ..anInt = 1
    ..aString = 'String!'
    ..aList.add(3)
    ..allDone();
}

void main() {
  var myObj = BigObject();
  print(myObj.anInt);
  print(myObj.aList);

  // Mostrar fillBigObject
  var filledObj = fillBigObject(myObj);
  print(filledObj.anInt);
  print(filledObj.aString);
  print(filledObj.aList);
}
