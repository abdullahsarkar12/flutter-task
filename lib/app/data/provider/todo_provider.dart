import 'dart:convert';

import 'package:flutter_task/app/data/model/todo.dart';
import 'package:get/get.dart';

class TodoProvider extends GetConnect {
  Future<List<Todo>?> getTodoList(page, limit) async {
    try {
      var response = await get('https://jsonplaceholder.typicode.com/todos?_page=$page&_limit=$limit');
      return (json.decode(response.bodyString.toString()) as List).map((i) => Todo.fromJson(i)).toList();
    } catch (e) {
      Future.error("error $e");
    }
  }
}
