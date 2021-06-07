import 'package:clean_architeture/feature/search/infra/viewmodel/search_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Test extends GetView<SearchViewModel> {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () async {
            print(controller.list);
            await controller.getUsers('durvalperipato');

            controller.list.forEach((element) {
              print(element.login);
            });
          },
          child: Text('Vamos Lá'),
        ),
      ),
    );
  }
}
