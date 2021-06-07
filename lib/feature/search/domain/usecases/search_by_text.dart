import 'package:clean_architeture/feature/search/domain/errors/errors_search.dart';
import 'package:clean_architeture/feature/search/domain/interfaces/i_repositories.dart';
import 'package:clean_architeture/feature/search/domain/interfaces/i_search.dart';

class SearchByText implements ISearch {
  final IRepositoriesSearch repository;

  SearchByText(this.repository);

  @override
  Future<dynamic> getUsers(String? searchText) async {
    if (searchText == null) {
      return NullListError();
    }
    if (searchText.isEmpty) {
      return EmptyListError();
    }

    var result = await repository.getUsers(searchText);

    return result;
  }
}
