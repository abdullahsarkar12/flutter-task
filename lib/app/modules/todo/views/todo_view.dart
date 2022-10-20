import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/todo_controller.dart';

class TodoView extends GetView<TodoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TodoView'),
        centerTitle: true,
      ),
      body: Obx(() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Card(
                color: Colors.white70,
                child: ListTile(
                  title: Column(
                    children: [
                      Text("Id: ${controller.todo.value?.id}"),
                      Text("User Id: ${controller.todo.value?.userId}"),
                      Text("Title: ${controller.todo.value?.title}"),
                      Text("Completed: ${controller.todo.value?.completed}"),
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
