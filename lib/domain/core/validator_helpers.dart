extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""")
        .hasMatch(this);
  }

  bool isValidPhone(){
    var input = this;
    return input.length > 2 && input.contains("+");
  }
}