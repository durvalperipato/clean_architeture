import 'package:clean_architeture/feature/search/domain/entities/result_search.dart';
import 'package:clean_architeture/feature/search/domain/errors/errors_search.dart';
import 'package:clean_architeture/feature/search/domain/interfaces/i_repositories.dart';
import 'package:clean_architeture/feature/search/domain/usecases/search_by_text.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class RepositoriesSearchMock extends Mock implements IRepositoriesSearch {}

void main() {
  final repository = RepositoriesSearchMock();
  final usecase = SearchByText(repository);

  test('Should return a List<ResultSearch>', () async {
    when(repository.getUsers(any))
        .thenAnswer((_) async => <ResultSearch>[ResultSearch()]);

    var result = await usecase.getUsers('user');
    expect(result, isA<List<ResultSearch>>());
  });

  test('Should return an EmptyListError with empty search by user', () async {
    var result = await usecase.getUsers('');
    expect(result, isA<EmptyListError>());
  });

  test('Should return an NullListError with null search by user', () async {
    var result = await usecase.getUsers(null);
    expect(result, isA<NullListError>());
  });
}
