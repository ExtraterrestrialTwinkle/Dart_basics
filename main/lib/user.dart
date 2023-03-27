/**
 * Создайте класс User, у которого есть поле email. Реализуйте два наследника
 * данного класса AdminUser и GeneralUser. Реализуйте mixin над классом User,
 * у которого будет метод getMailSystem, который возвращает значение из email,
 * которое находится после @. Например, если email пользователя user@mail.ru,
 * то данный метод вернёт mail.ru. Используйте данный миксин на AdminUser.
 * Далее реализуйте класс UserManager<T extends User>, у которого будет храниться
 * список пользователей и будут методы добавления или удаления их. Также в
 * UserManager реализуйте метод, который выведет почту всех пользователей,
 * однако если пользователь admin, будет выведено значение после @. Проверьте
 * реализованные методы на практике.
 */
class _User {
  String email;

  _User(this.email);
}

class AdminUser extends _User with MailSystem {
  AdminUser(email) : super(email);
}

class GeneralUser extends _User {
  GeneralUser(email) : super(email);
}

mixin MailSystem on _User {
  String get getMailSystem =>
      email
          .split('@')
          .last;
}

class UserManager<T extends _User> {
  List<T> _userList = [];

  void addUser(T user) {
    _userList.add(user);
  }

  void removeUser(T user) {
    _userList.remove(user);
  }

  void addUsers(List<T> users) {
    users.forEach((element) { _userList.add(element); });
  }

  void removeUsers(List<T> users) {
    users.forEach((element) { _userList.remove(element); });
  }

  List<String> getEmails() {
    return _userList.map((e) => _emailFromUser(e)).toList();
  }

  String _emailFromUser(_User user) {
    if (user is AdminUser) {
      return user.getMailSystem;
    } else {
      return user.email;
    }
  }
}
