import 'package:clean_architeture/feature/search/domain/usecases/search_by_text.dart';
import 'package:get/get.dart';

class SearchViewModel extends GetxController {
  final SearchByText searchByText;
  SearchViewModel(this.searchByText);

  var _list = [].obs();
  get list => _list;
  set list(var result) {
    _list = result;
  }

  Future<void> makeSearch(String searchText) async {
    list = await searchByText.getUsers(searchText);
  }
}
