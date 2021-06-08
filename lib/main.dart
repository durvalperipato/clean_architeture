import 'package:clean_architeture/app/app_bindings.dart';
import 'package:clean_architeture/feature/search/presenter/pages/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    initialBinding: AppBindings(),
    initialRoute: '/',
    routes: {
      '/': (context) => SearchView(),
    },
  ));
}
