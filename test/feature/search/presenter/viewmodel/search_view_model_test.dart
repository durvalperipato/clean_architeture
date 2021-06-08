import 'package:clean_architeture/feature/search/domain/interfaces/i_search.dart';
import 'package:clean_architeture/feature/search/infra/models/result_search_model.dart';
import 'package:clean_architeture/feature/search/presenter/viewmodel/search_view_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class SearchByTextMock extends Mock implements ISearch {}

void main() {
  final usecase = SearchByTextMock();
  final viewmodel = SearchViewModel(usecase);

  test('Should return a list of ResultSearchModel', () async {
    when(usecase.getUsers('test'))
        .thenAnswer((_) async => <ResultSearchModel>[]);
    await viewmodel.makeSearch('test');
    expect(viewmodel.list, isA<List<ResultSearchModel>>());
  });
}
