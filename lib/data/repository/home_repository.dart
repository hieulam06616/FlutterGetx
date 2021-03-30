

import 'package:demo_get/data/provider/home_api_provider.dart';
import 'package:demo_get/data/modal/cases_model.dart';
import 'package:flutter/foundation.dart';

abstract class IHomeRepository {
  Future<CasesModel> getCases();
  int test();
}

class HomeRepository implements IHomeRepository {
  HomeRepository({@required this.provider});
  final IHomeProvider provider;

  @override
  Future<CasesModel> getCases() async {
    final cases = await provider.getCases("/summary");
    if (cases.status.hasError) {
      return Future.error(cases.statusText);
    } else {
      return cases.body;
    }
  }

  @override
  int test() {
    // TODO: implement test
    throw UnimplementedError();
  }
}

//2