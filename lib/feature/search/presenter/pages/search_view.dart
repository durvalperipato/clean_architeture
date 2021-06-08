import 'package:clean_architeture/feature/search/presenter/viewmodel/search_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchView extends GetView<SearchViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        TextField(
            controller: controller.textEditingController,
            onSubmitted: (value) async => await controller.makeSearch(value)),
        Obx(
          () => Expanded(
            child: ListView.builder(
              itemCount: controller.list.length,
              itemBuilder: (_, index) => ListTile(
                title: Text(controller.list[index]),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
