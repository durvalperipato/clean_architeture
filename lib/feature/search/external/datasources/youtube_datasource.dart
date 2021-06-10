import 'package:clean_architeture/feature/search/domain/errors/errors_search.dart';
import 'package:clean_architeture/feature/search/infra/interfaces/i_datasource.dart';
import 'package:clean_architeture/feature/search/infra/models/youtube_search_model.dart';
import 'package:dio/dio.dart';

class YoutubeDataSource implements IDataSource {
  final Dio dio;

  YoutubeDataSource(this.dio);

  @override
  Future<List<YoutubeSearchModel>>? searchText(String? searchText) async {
    List<YoutubeSearchModel> resultList;
    if (searchText != null) {
      var response = await dio.get(
          'https://www.googleapis.com/youtube/v3/search?part=snippet&q=$searchText&key={MY_API_KEY}');
      if (response.statusCode == 200) {
        List list = response.data["items"];

        resultList = list
            .map((result) => YoutubeSearchModel(result["snippet"]["title"]))
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
