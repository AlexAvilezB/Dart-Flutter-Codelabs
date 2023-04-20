Future<String> fetchRole() async {
  return Future.delayed(const Duration(seconds: 4), () => 'Admin');
}

Future<int> fetchLoginAmount() async {
  return Future.delayed(const Duration(seconds: 4), () => 5);
}

Future<String> reportUserRole() async {
  var username = await fetchRole();
  return 'Your username is: $username';
}

Future<String> reportLogins() async {
  var logins = await fetchLoginAmount();
  return 'Total number of logins: $logins';
}

Future<void> main() async {
  String userRole = await reportUserRole();
  print(userRole); // Mostrar "UserRole"

  String loginAmount = await reportLogins();
  print(loginAmount); // Imprime "Total de logins"
}
