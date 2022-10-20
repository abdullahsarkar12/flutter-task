import 'package:flutter_task/app/data/model/todo.dart';
import 'package:flutter_task/app/data/provider/todo_provider.dart';
import 'package:flutter_task/app/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var todoList = <Todo>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    TodoProvider().getTodoList(1, 10).then((value) {
      todoList.value = value as List<Todo>;
    });
  }

  @override
  void onClose() {}

  onTodoTap(Todo? todo) {
    Get.toNamed(Routes.TODO, arguments: {"todo": todo});
  }
}
