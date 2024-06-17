// 6-password.dart
// copy 4-mutables.dart to 6-password.dart
class Password {
  String _password;

  // Constructor to initialize the password
  Password({required String password}) : _password = password;

  // Getter for the password property
  String get password => _password;

  // Setter for the password property
  set password(String value) {
    _password = value;
  }

  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    bool hasUppercase = _password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = _password.contains(RegExp(r'[a-z]'));
    bool hasNumber = _password.contains(RegExp(r'[0-9]'));

    return hasUppercase && hasLowercase && hasNumber;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}

class User {
  int id;
  String name;
  int age;
  double height;
  String user_password; // Add a new property called user_password

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required this.user_password,
  });
}