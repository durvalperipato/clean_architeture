import 'package:clean_architeture/feature/search/presenter/viewmodel/search_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Test extends GetView<SearchViewModel> {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () async {},
          child: Text('Vamos Lá'),
        ),
      ),
    );
  }
}
