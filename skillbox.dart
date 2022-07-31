import 'user.dart';

void main() {
  UserManager manager = UserManager(users: [
    AdminUser(email: 'yoou@google.com'),
    GeneralUser(email: '2@ya.ru'),
  ]);
  manager.addUser(AdminUser(email: 'gg@wp.ru'));
  manager.removeUser(AdminUser(email: '2@ya.ru'));
  manager.printMails();
}
