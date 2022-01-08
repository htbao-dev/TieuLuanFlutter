import 'package:salon_xe_may/models/xe_may.dart';
import 'package:salon_xe_may/resources/fake_api_provider.dart';

abstract class DataProvider {
  Future<List<XeMay>> fetchDataXeMay();
}

class Repository {
  final _dataProvider = FakeApiProvier();

  Future<List<XeMay>> fetchDataXeMay() => _dataProvider.fetchDataXeMay();

  Future<List<String>> fetchDataCategory() => _dataProvider.fetchDataCategory();
}
