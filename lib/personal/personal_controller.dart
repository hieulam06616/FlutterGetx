import 'package:get/get.dart';

class PersonalController extends GetxController {
  RxInt count = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  void change() => count.value++;
}
