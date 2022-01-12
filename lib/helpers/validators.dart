class StringValidator{
  static bool isValidString(String value) {
    if(value.isEmpty){
      return false;
    }else{
      if(value.isNotEmpty && value.length > 3){
        return true;
      }else{
        return false;
      }
    }
  }
  static bool isValidEmail(String value) {
    bool validemail = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
    if (value.isEmpty) {
      return false;
    } else {
      if (validemail) {
        return true;
      }else {
        return false;
      }
    }
  }

  static bool isValidPassword(String value){
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
    if (value.isEmpty) {
      return false;
    } else {
      if (regex.hasMatch(value)) {
        return true;
      } else {
        return false;
      }
    }
  }
}

