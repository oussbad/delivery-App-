import 'dart:convert';

import 'package:boxpend_flutter_android_app/src/app/core/error/exceptions.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/constants_manager.dart';
import 'package:boxpend_flutter_android_app/src/data/interfaces/template_remote_datasource.dart';
import 'package:boxpend_flutter_android_app/src/app/core/services/api_service.dart';
import 'package:boxpend_flutter_android_app/src/data/models/template_model.dart';

class TemplateRemoteDatasourceImpl implements TemplateRemoteDatasource {
  final ApiService api;

  TemplateRemoteDatasourceImpl({required this.api});

  @override
  Future<TemplateModel> getTemplate() async {
    final result = await api.get(ConstantsManager.getTemplateEndpoint);
    if (result.status == ConstantsManager.apiSucces) {
      final data = TemplateModel.fromJson(jsonDecode(result.body));
      return data;
    } else {
      throw ServerException();
    }
  }
}
