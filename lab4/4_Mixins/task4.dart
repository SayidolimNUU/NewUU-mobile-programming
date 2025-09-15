mixin Validator {
  bool isEmailValid(String email) {
    if (email.isEmpty) return false;
    return RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(email);
  }

  bool isPasswordStrong(String password) {
    return password.length > 8;
  }
}

class UserSignUp with Validator {
  String email;
  String password;

  UserSignUp(this.email, this.password);

  void canSignUp() {
    if (isEmailValid(this.email) && isPasswordStrong(this.password)) {
      print('User can sign up');
    }
    else print('User can not sign up');
  }
}

void main() {
  var myUserSignUp = UserSignUp('demo@example.com', 'longlongpassword');
  myUserSignUp.canSignUp();

  myUserSignUp.email = 'demo@wrongemail';
  myUserSignUp.canSignUp();

  myUserSignUp.email = 'demo@example.com';
  myUserSignUp.password = 'smol';
  myUserSignUp.canSignUp();
}
