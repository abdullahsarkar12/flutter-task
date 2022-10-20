import 'package:flutter_task/app/data/model/todo.dart';
import 'package:get/get.dart';

class TodoController extends GetxController {
  var todo = Rxn<Todo>();

  @override
  void onInit() {
    super.onInit();
    todo.value = Get.arguments['todo'];
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
