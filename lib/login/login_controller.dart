import 'package:demo_get/personal/personal_controller.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  PersonalController c = Get.put(PersonalController());

void tru(){
  c.count.value--;
}
  
}
