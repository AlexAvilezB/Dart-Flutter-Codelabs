String addHello(String user) => 'Hello $user';

Future<String> greetUser() async {
  var username = await fetchUsername();
  return addHello(username);
}

Future<String> sayGoodbye() async {
  try {
    var result = await logoutUser();
    return '$result Thanks, see you next time';
  } catch (e) {
    return 'Failed to logout user: $e';
  }
}

fetchUsername() async {
  await Future.delayed(Duration(seconds: 1)); // Simular una espera
  return 'Bob';
}

logoutUser() async {
  await Future.delayed(Duration(seconds: 2)); // Simular una espera y fallo
  throw 'Logout failed';
}

void main() async {
  var greeting = await greetUser(); // Esperar a que se resuelva la promesa
  print(greeting); // Imprime "Hello Bob"

  var goodbye = await sayGoodbye(); // Esperar a que se resuelva la promesa
  print(goodbye); // Imprime "Failed to logout user: Logout failed"
}
