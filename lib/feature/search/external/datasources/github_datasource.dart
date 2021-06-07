import 'package:clean_architeture/feature/search/domain/errors/errors_search.dart';
import 'package:clean_architeture/feature/search/infra/interfaces/i_datasource.dart';
import 'package:clean_architeture/feature/search/infra/models/result_search_model.dart';
import 'package:dio/dio.dart';

class GithubDataSource implements IDataSource {
  //final http.Client httpClient;
  final Dio dio;

  GithubDataSource(this.dio);

  @override
  Future<List<ResultSearchModel>>? searchText(String? searchText) async {
    if (searchText != null) {
      var response = await dio.get(
          'https://api.github.com/search/users?q=${searchText.trim().replaceAll(' ', '+')}');
      if (response.statusCode == 200) {
        List list = response.data["items"];

        var resultList = list
            .map((result) => ResultSearchModel(result["login"],
                avatarUrl: result["avatarUrl"],
                bio: result["bio"],
                email: result["email"],
                nickname: result["nickname"]))
            .toList();

        return resultList;
      } else {
        throw SearchError();
      }
    } else {
      throw NullListError();
    }
  }
}
