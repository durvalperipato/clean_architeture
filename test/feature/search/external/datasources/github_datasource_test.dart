import 'package:clean_architeture/feature/search/domain/errors/errors_search.dart';
import 'package:clean_architeture/feature/search/external/datasources/github_datasource.dart';
import 'package:clean_architeture/feature/search/infra/models/github_search_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'github_datasource_test.mocks.dart';

/*Necessário o decorator por causa do NullSafety onde retornava
 Type Null no método NoSuchMethod como retorno inicial ao tentar o Mock*/

@GenerateMocks([Dio])
void main() {
  final MockDio dio = MockDio();
  final githubDataSource = GithubDataSource(dio);

  test('Should return a result of List<ResultSearchModel>', () async {
    when(dio.get('https://api.github.com/search/users?q=durval'))
        .thenAnswer((_) async => Response(data: {
              "items": [
                {
                  "login": "durval",
                  "bio": "bio",
                  "email": null,
                  "nickname": "durval",
                  "avatarUrl": "http"
                }
              ]
            }, statusCode: 200, requestOptions: RequestOptions(path: '')));

    var result = await githubDataSource.searchText('durval');
    expect(result, isA<List<GithubResultSearchModel>>());
  });

  test('Should throw an SearchError', () async {
    when(dio.get('https://api.github.com/search/users?q=durval')).thenAnswer(
        (_) async => Response(
            data: null,
            statusCode: 404,
            requestOptions: RequestOptions(path: '')));
    var result = githubDataSource.searchText('durval');
    expect(result, throwsA(isA<SearchError>()));
  });
  test('Should throw an NullListError', () async {
    var result = githubDataSource.searchText(null);
    expect(result, throwsA(isA<NullListError>()));
  });
}
