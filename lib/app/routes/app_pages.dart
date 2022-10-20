import 'package:get/get.dart';

import 'package:flutter_task/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_task/app/modules/home/views/home_view.dart';
import 'package:flutter_task/app/modules/todo/bindings/todo_binding.dart';
import 'package:flutter_task/app/modules/todo/views/todo_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TODO,
      page: () => TodoView(),
      binding: TodoBinding(),
    ),
  ];
}
