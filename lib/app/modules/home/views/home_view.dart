import 'package:flutter/material.dart';
import 'package:flutter_task/app/modules/home/views/todo_card.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Obx(() {
        return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: controller.todoList.length,
            itemBuilder: (BuildContext context, int index) {
              return TodoCard(controller.todoList[index]);
            });
      }),
    );
  }
}
