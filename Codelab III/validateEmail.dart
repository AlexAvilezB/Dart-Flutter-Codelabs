bool isValidEmailAddress(EmailAddress email) {
  final RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return regex.hasMatch(email.address);
}

Iterable<EmailAddress> parseEmailAddresses(Iterable<String> strings) {
  return strings.map((s) => EmailAddress(s));
}

bool anyInvalidEmailAddress(Iterable<EmailAddress> emails) {
  return emails.any((email) => !isValidEmailAddress(email));
}

Iterable<EmailAddress> validEmailAddresses(Iterable<EmailAddress> emails) {
  return emails.where((email) => isValidEmailAddress(email));
}

class EmailAddress {
  final String address;

  EmailAddress(this.address);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailAddress &&
          runtimeType == other.runtimeType &&
          address == other.address;

  @override
  int get hashCode => address.hashCode;

  @override
  String toString() {
    return 'EmailAddress{address: $address}';
  }
}

void main() {
  List<String> emails = [
    'john@example.com',
    'mary@invalid',
    'peter@example.com',
    'lisa@123.com',
    'ann@example.com',
  ];

  Iterable<EmailAddress> parsedEmails = parseEmailAddresses(emails);

  bool hasInvalidEmails = anyInvalidEmailAddress(parsedEmails);

  Iterable<EmailAddress> validEmails = validEmailAddresses(parsedEmails);

  print('Direcciones de correo electrónico:');
  emails.forEach((email) => print(email));

  print('Direcciones de correo electrónico válidas:');
  validEmails.forEach((email) => print(email.address));

  if (hasInvalidEmails) {
    print('¡Se encontraron direcciones de correo electrónico no válidas!');
  } else {
    print('¡Todas las direcciones de correo electrónico son válidas!');
  }
}
