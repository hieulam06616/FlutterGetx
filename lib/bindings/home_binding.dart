import 'package:demo_get/data/provider/api.dart';
import 'package:demo_get/data/provider/home_api_provider.dart';
import 'package:demo_get/data/repository/home_repository.dart';
import 'package:demo_get/data/repository/posts_repository.dart';
import 'package:demo_get/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // 1 https://github.com/kauemurakami/getx_pattern/blob/master/exemples/getx_pattern_example/lib/app/bindings/home_binding.dart
    // Get.lazyPut<HomeController>(() {
    //   return HomeController(
    //       repository:
    //           MyRepository(apiClient: MyApiClient(httpClient: http.Client())));
    // });

    //2 https://github.com/jonataslaw/getx/tree/master/example/lib
    Get.lazyPut<IHomeProvider>(() => HomeProvider());
    Get.lazyPut<IHomeRepository>(() => HomeRepository(provider: Get.find()));
    Get.lazyPut(() => HomeController(repository: Get.find()));
  }
}
