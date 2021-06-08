import 'package:clean_architeture/feature/search/domain/usecases/search_by_text.dart';
import 'package:clean_architeture/feature/search/external/datasources/youtube_datasource.dart';
import 'package:clean_architeture/feature/search/infra/repositories/search_repository.dart';
import 'package:clean_architeture/feature/search/presenter/viewmodel/search_view_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Dio dio = Dio();
    //GithubDataSource datasource = GithubDataSource(dio);
    YoutubeDataSource datasource = YoutubeDataSource(dio);
    SearchRepository repository = SearchRepository(datasource);
    SearchByText usecase = SearchByText(repository);
    Get.lazyPut(() => SearchViewModel(usecase));
  }

  routes() => {};
}
