import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';


class TemplateMock {
  final Dio _dio = Dio( );
  late DioAdapter _dioAdapter;
  TemplateMock() {
    _dioAdapter = DioAdapter(dio: _dio);
    _dio.httpClientAdapter = _dioAdapter;
  }
  void getMockResponse(String url, Map<String, dynamic> response) {
    _dioAdapter.onGet(url, (request) => request.reply(200, response));
  }
}


