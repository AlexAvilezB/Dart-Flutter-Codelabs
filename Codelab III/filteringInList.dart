Iterable<User> filterOutUnder21(Iterable<User> users) {
  return users.where((user) => user.age >= 21);
}

Iterable<User> findShortNamed(Iterable<User> users) {
  return users.where((user) => user.name.length <= 3);
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
    User('John', 20),
    User('Mary', 21),
    User('Peter', 25),
    User('Lisa', 19),
    User('Ann', 30),
  ];

  Iterable<User> over21 = filterOutUnder21(users);
  Iterable<User> shortNamed = findShortNamed(users);

  print('Usuarios mayores o iguales a 21 años:');
  over21.forEach((user) => print('${user.name}, ${user.age} años'));

  print('Usuarios con nombre corto:');
  shortNamed.forEach((user) => print('${user.name}, ${user.age} años'));
}
