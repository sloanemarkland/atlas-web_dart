// use task 2 but make password private, need getter/constructor
class Password {
  String _password;

  // constructor
  Password({required String password}) : _password = password;

  // getter
  String get password => _password;

  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    bool hasUppercase = _password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = _password.contains(RegExp(r'[a-z]'));
    bool hasDigits = _password.contains(RegExp(r'[0-9]'));

    return hasUppercase && hasLowercase && hasDigits;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
