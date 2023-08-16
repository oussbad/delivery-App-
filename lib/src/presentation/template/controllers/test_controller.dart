import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../../app/mock/template_mock.dart';

class TestController extends GetxController {
  static TestController get to => Get.find();
  final TemplateMock _templateMock = TemplateMock();
  final _dio = Get.find<Dio>();

  Future fetchMockData(String url, Map<String, dynamic> response) async {
    _templateMock.getMockResponse(url, response);
    _dio.options.connectTimeout = const Duration(seconds: 10);
    _dio.options.receiveTimeout = const Duration(seconds: 10);
    final data = await _dio.get(url);
    return data.data;
  }
}
