bool anyUserUnder18(Iterable<User> users) {
  return users.any((user) => user.age < 18);
}

bool everyUserOver13(Iterable<User> users) {
  return users.every((user) => user.age > 13);
}

class User {
  String name;
  int age;

  User(
    this.name,
    this.age,
  );
}

void main() {
  List<User> users = [
    User('John', 15),
    User('Mary', 21),
    User('Peter', 13),
    User('Lisa', 17),
  ];

  bool anyUnder18 = anyUserUnder18(users);
  bool everyOver13 = everyUserOver13(users);

  print('¿Hay usuarios menores de 18 años? $anyUnder18');
  print('¿Son todos los usuarios mayores de 13 años? $everyOver13');
}
