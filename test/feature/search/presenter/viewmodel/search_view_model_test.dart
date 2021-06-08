/* import 'package:clean_architeture/feature/search/domain/usecases/search_by_text.dart';
import 'package:clean_architeture/feature/search/infra/interfaces/i_datasource.dart';
import 'package:clean_architeture/feature/search/infra/models/result_search_model.dart';
import 'package:clean_architeture/feature/search/presenter/viewmodel/search_view_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class GithubDatasourceMock extends Mock implements IDataSource {}

void main() {
  final viewmodel = SearchViewModel();

  test('Should return a list of ResultSearchModel', () async {
    when(datasource.searchText('test'))
        .thenAnswer((_) async => <ResultSearchModel>[]);
    //var result = await viewmodel.getUsers('test');
    //expect(result, isA<List<ResultSearch>>());
  });
}
 */
