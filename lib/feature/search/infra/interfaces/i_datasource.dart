import 'package:clean_architeture/feature/search/infra/models/result_search_model.dart';

abstract class IDataSource {
  Future<List<ResultSearchModel>>? searchText(String? searchText);
}
