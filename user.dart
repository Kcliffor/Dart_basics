abstract class User {
  String email;

  User({
    required this.email,
  });
}

mixin MailSystem implements User {
  String get getMailSystem => this.email.split('@').last;
}

class AdminUser extends User with MailSystem {
  AdminUser({required super.email});
}

class GeneralUser extends User {
  GeneralUser({required super.email});
}

class UserManager<T extends User> {
  List<User> users;

  UserManager({
    required this.users,
  });

  void addUser(User user) => users.add(user);

  void removeUser(User user) => users.removeWhere((element) => element.email == user.email);

  void printMails() {
    for (User user in users) {
      if (user is GeneralUser)
        print(user.email);
      else if (user is AdminUser) print(user.getMailSystem);
    }
  }
}
