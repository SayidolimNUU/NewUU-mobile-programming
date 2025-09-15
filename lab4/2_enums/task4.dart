enum UserRole {
  admin,
  editor,
  guest
}

class User {
  String name;
  UserRole role;

  User(this.name, this.role);

  bool hasEditPermission() {
    if (role == UserRole.admin || role == UserRole.editor) {
      return true;
    }
    return false;
  }
}

void main() {
  List<User> myUsers = [User("Alisher", UserRole.admin), 
  User("Bobur", UserRole.editor),
  User("Charos", UserRole.guest)];

  for (var user in myUsers) {
    if (user.hasEditPermission()) {
      print("${user.name} has edit permissions.");
    } else {
      print("${user.name} does not have edit permissions.");
    }
  }
}
