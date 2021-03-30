import 'package:demo_get/controllers/personal_controller.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  PersonalController c = Get.put(PersonalController());
  var name = 'Anubhav'.obs;
  void tru() {
    c.count--;
  }
}
