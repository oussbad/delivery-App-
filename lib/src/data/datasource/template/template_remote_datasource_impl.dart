import 'package:boxpend_flutter_android_app/src/data/models/template_model.dart';

abstract class TemplateRemoteDatasource {
  Future<List<TemplateModel>> getTemplates();
}
