class FirstTwoLetters {
  final String letterOne;
  final String letterTwo;

  FirstTwoLetters(String word)
      : assert(word.length >= 2),
        letterOne = word[0],
        letterTwo = word[1];
}

void main() {
  var myList = FirstTwoLetters('Mario');
  print([myList.letterOne, myList.letterTwo]);
}
