import 'package:clean_architeture/feature/search/domain/entities/result_search.dart';
import 'package:clean_architeture/feature/search/domain/interfaces/i_repositories.dart';
import 'package:clean_architeture/feature/search/infra/interfaces/i_datasource.dart';
import 'package:get/get.dart';

class SearchViewModel extends GetxController implements IRepositoriesSearch {
  final IDataSource datasource;

  SearchViewModel(this.datasource);

  var _list = [].obs();

  get list => _list;

  set list(var result) {
    _list = result;
  }

  @override
  Future<List<ResultSearch>>? getUsers(String? searchText) async {
    var result;
    try {
      result = await datasource.searchText(searchText);
      list = result;
      return result;
    } catch (e) {
      _list.clear();
      return [];
    }
  }
}
