import 'package:clean_architeture/feature/search/domain/usecases/search_by_text.dart';
import 'package:clean_architeture/feature/search/external/datasources/github_datasource.dart';
import 'package:clean_architeture/feature/search/infra/viewmodel/search_view_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Dio dio = Dio();
    GithubDataSource datasource = GithubDataSource(dio);
    //SearchRepository repository = SearchRepository(datasource);
    SearchViewModel repository = SearchViewModel(datasource);
    Get.lazyPut(() => SearchViewModel(datasource));
    Get.lazyPut(() => SearchByText(repository));
  }

  routes() => {};
}
