import 'package:demo_get/data/modal/cases_model.dart';
import 'package:get/get.dart';

abstract class IHomeProvider {
  Future<Response<CasesModel>> getCases(String path);
}

// GetConnect https://viblo.asia/p/flutter-getx-using-getconnect-to-handle-api-request-part-4-ORNZqdgrK0n
class HomeProvider extends GetConnect implements IHomeProvider {
  @override
  void onInit() {
    httpClient.defaultDecoder =
        (val) => CasesModel.fromJson(val as Map<String, dynamic>);
    httpClient.baseUrl = 'https://api.covid19api.com';
  }

  @override
  Future<Response<CasesModel>> getCases(String path) => get(path);

  // Get request
  Future<Response> getUser(int id) => get('http://youapi/users/$id');

}

//2