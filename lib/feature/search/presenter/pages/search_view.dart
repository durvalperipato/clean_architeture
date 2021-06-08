import 'package:clean_architeture/feature/search/domain/usecases/search_by_text.dart';
import 'package:clean_architeture/feature/search/presenter/viewmodel/search_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchView extends GetView<SearchViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
        onPressed: () async {
          print(controller.list);
          await controller.makeSearch('twocanada');
          print(controller.list);
        },
        child: Center(child: Text('Pesquisar')),
      ),
    );
  }
}
