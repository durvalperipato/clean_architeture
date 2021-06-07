import 'package:clean_architeture/app/app_bindings.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'app/app_widget.dart';

void main() {
  runApp(GetMaterialApp(
    initialBinding: AppBindings(),
    initialRoute: '/',
    routes: {
      '/': (context) => Test(),
    },
  ));
}
