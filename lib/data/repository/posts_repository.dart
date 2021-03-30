import 'package:demo_get/data/provider/api.dart';
import 'package:meta/meta.dart';
//1 https://github.com/kauemurakami/getx_pattern/blob/master/exemples/getx_pattern_example/lib/app/data/repository/posts_repository.dart
class MyRepository {
  final MyApiClient apiClient;

  MyRepository({@required this.apiClient}) : assert(apiClient != null);

  getAll() {
    return apiClient.getAll();
  }

  getId(id) {
    return apiClient.getId(id);
  }

}