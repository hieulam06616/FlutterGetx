import 'package:demo_get/data/modal/book_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalController extends GetxController {
  RxInt count = 0.obs;
  RxString a = ''.obs;
  RxList<BookModal> listBooks = <BookModal>[].obs;
  TextEditingController nameTextFieldController;
  TextEditingController valueTextFieldController;

  @override
  void onInit() {
    listBooks.addAll([
      BookModal(name: "name 1", value: 1233),
      BookModal(name: "name 2", value: 1233),
      BookModal(name: "name 3", value: 1233),
      BookModal(name: "name 4", value: 1233),
      BookModal(name: "name 5", value: 1233),
    ]);
    nameTextFieldController = TextEditingController();
    valueTextFieldController = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    nameTextFieldController?.dispose();
    valueTextFieldController?.dispose();
    super.onClose();
  }

  void change() => count++;

  void addBook() {
    if (nameTextFieldController.text.isNotEmpty &&
        valueTextFieldController.text.isNotEmpty) {
      BookModal item = new BookModal(
          name: nameTextFieldController.text,
          value: int.parse(valueTextFieldController.text));
      listBooks.add(item);
    } else {
      Get.dialog(Scaffold(body: Center(child: Container( color: Colors.white, child: Text("ERRROR"),),)),
        barrierDismissible: false);
    }
  }

  void deleteBook(index) {
    listBooks.removeAt(index);
  }

  void apiLogin() async {
    Get.dialog(Center(child: CircularProgressIndicator()),
        barrierDismissible: false);
    // Request request = Request(url: urlLogin, body: {
    //   'email': nameTextFieldController.text,
    //   'password': valueTextFieldController.text
    // });
    // request.post().then((value) {
    //   Get.back();
    //   Get.offNamed('/homeView');
    // }).catchError((onError) {});
  }
}
