Future<String> changeUsername() async {
  try {
    return await fetchNewUsername(); // Retornar nuevo nombre de usuario
  } catch (err) {
    return err.toString(); // Retornar error
  }
}

fetchNewUsername() async {
  // Simular un error
  throw 'Username already exists.';
}

void main() async {
  String username = await changeUsername();
  print(username); // Imprime "Username already exists."
}
