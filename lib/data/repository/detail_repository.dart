

import 'package:demo_get/data/provider/home_api_provider.dart';
import 'package:demo_get/data/modal/cases_model.dart';
import 'package:flutter/foundation.dart';

abstract class IDetailRepository {
  int testDetail();
}

class DetailRepository implements IDetailRepository {
  DetailRepository({@required this.provider});
  final IHomeProvider provider;

  @override
  int testDetail() {
    // TODO: implement test
    throw UnimplementedError();
  }
}

//2