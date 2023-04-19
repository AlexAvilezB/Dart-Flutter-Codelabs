Iterable<String> getNameAndAges(Iterable<User> users) {
  return users.map((user) => '${user.name} is ${user.age}');
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

  Iterable<String> nameAndAges = getNameAndAges(users);

  print('Nombres y edades de los usuarios:');
  nameAndAges.forEach((str) => print(str));
}
