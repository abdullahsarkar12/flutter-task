import 'package:flutter/material.dart';
import 'package:flutter_task/app/data/model/todo.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class TodoCard extends GetView<HomeController> {
  TodoCard(this.todo);

  final Todo? todo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.onTodoTap(todo);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white70,
          child: ListTile(
            title: Column(
              children: [
                Text("Id: ${todo?.id}"),
                Text("User Id: ${todo?.userId}"),
                Text("Title: ${todo?.title}"),
                Text("Completed: ${todo?.completed}"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
