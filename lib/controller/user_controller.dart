import 'package:estados_app/models/user.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  var userExist = false.obs;
  var user = User().obs;

  void setUser(User newUser) {
    userExist.value = true;
    user.value = newUser;
  }

  void changeAge(int age) {
    user.update((val) {
      val!.age = age;
    });
  }

  void addProfession(String profession) {
    final professions = user.value.professions;
    user.update((val) {
      val!.professions = [...?professions, profession];
    });
  }
}
