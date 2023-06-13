class Validator {
  // returns whether the password contains at least one upper case, one lower case, one number and one special character
  bool validatePassword(String value) {
    RegExp regExp = RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~])\S{6,}$');
    return regExp.hasMatch(value);
  }

  bool validateName(String value) {
    RegExp regExp = RegExp(r"""^[A-Za-z]+(((\u2019|\-|\.)?([A-Za-z])+))?$""");
    RegExp androidRegExp =
        RegExp(r"""^[A-Za-z]+(((\u0027|\-|\.)?([A-Za-z])+))?$""");
    return (regExp.hasMatch(value) == true ||
        androidRegExp.hasMatch(value) == true);
  }

  bool validateAge(String value) {
    try {
      int a = int.parse(value);
      if (a >= 18) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  bool validateEmail(String value) {
    RegExp regExp = RegExp(
        r"""(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])""");
    return regExp.hasMatch(value);
  }
}
