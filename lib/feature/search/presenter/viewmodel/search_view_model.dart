import 'package:clean_architeture/feature/search/domain/entities/result_search.dart';
import 'package:clean_architeture/feature/search/domain/interfaces/i_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchViewModel extends GetxController {
  final ISearch searchByText;
  SearchViewModel(this.searchByText);

  TextEditingController textEditingController =
      TextEditingController(text: 'twocanada');
  RxList<dynamic> _list = [].obs;

  List<dynamic> get list => _list;

  set list(List<dynamic> result) {
    _list.value = result;
  }

  Future<void> makeSearch(String searchText) async {
    list = await searchByText.getUsers(searchText)!;
  }
}
