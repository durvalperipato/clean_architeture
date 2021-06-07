import 'dart:async';

import 'package:clean_architeture/feature/search/domain/entities/result_search.dart';
import 'package:clean_architeture/feature/search/domain/interfaces/i_repositories.dart';
import 'package:clean_architeture/feature/search/infra/interfaces/i_datasource.dart';
import 'package:clean_architeture/feature/search/infra/models/result_search_model.dart';

class SearchRepository implements IRepositoriesSearch {
  final IDataSource datasource;

  SearchRepository(this.datasource);

  @override
  Future<List<ResultSearch>>? getUsers(String? searchText) async {
    List<ResultSearchModel> result;
    try {
      result = await datasource.searchText(searchText)!;

      return result;
    } catch (e) {
      result = [];
      return result;
    }
  }
}
