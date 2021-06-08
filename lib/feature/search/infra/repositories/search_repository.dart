import 'dart:async';

import 'package:clean_architeture/feature/search/domain/errors/errors_search.dart';
import 'package:clean_architeture/feature/search/domain/interfaces/i_repositories.dart';
import 'package:clean_architeture/feature/search/infra/interfaces/i_datasource.dart';
import 'package:clean_architeture/feature/search/infra/models/result_search_model.dart';

class SearchRepository implements IRepositoriesSearch {
  final IDataSource datasource;

  SearchRepository(this.datasource);

  @override
  Future<List<ResultSearchModel>>? getUsers(String? searchText) async {
    List<ResultSearchModel> result = [];
    try {
      result = await datasource.searchText(searchText)!;
    } on SearchError {
      // TODO
    } on NullListError {
      // TODO
    } catch (e) {
      // TODO
    }
    return result;
  }
}
