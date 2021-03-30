import 'package:demo_get/data/modal/cases_model.dart';
import 'package:demo_get/data/repository/detail_repository.dart';
import 'package:demo_get/data/repository/home_repository.dart';
import 'package:demo_get/data/share_pref.dart';

abstract class IRepository implements IHomeRepository, IDetailRepository {}
abstract class IRepositoryAdapter implements IRepository, ISharePref {}
class RepositoryAdapter implements IRepositoryAdapter {
  @override
  Future<CasesModel> getCases() {
    // TODO: implement getCases
    throw UnimplementedError();
  }

  @override
  int test() {
    // TODO: implement test
    throw UnimplementedError();
  }

  @override
  Future getSharePref() {
    // TODO: implement getSharePref
    throw UnimplementedError();
  }

  @override
  int testDetail() {
    // TODO: implement testDetail
    throw UnimplementedError();
  }

}