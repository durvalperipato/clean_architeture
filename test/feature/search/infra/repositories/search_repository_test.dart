import 'package:clean_architeture/feature/search/domain/entities/result_search.dart';
import 'package:clean_architeture/feature/search/infra/interfaces/i_datasource.dart';
import 'package:clean_architeture/feature/search/infra/models/result_search_model.dart';
import 'package:clean_architeture/feature/search/infra/repositories/search_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class DataSourceMock extends Mock implements IDataSource {}

void main() {
  final datasource = DataSourceMock();
  final repository = SearchRepository(datasource);

  test('Should return a List<ResultSearchModel>', () async {
    when(datasource.searchText(any))
        .thenAnswer((_) async => <ResultSearchModel>[]);

    var result = await repository.getUsers('user');

    expect(result, isA<List<ResultSearch>>());
  });

  test('Should return a EmptyList', () async {
    when(datasource.searchText(null)).thenThrow(Exception());

    var result = await repository.getUsers(null);
    expect(result, []);
  });
}
