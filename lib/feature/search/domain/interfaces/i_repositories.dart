import 'dart:async';

import 'package:clean_architeture/feature/search/domain/entities/result_search.dart';

abstract class IRepositoriesSearch {
  Future<List<ResultSearch>>? getUsers(String? searchText);
}
