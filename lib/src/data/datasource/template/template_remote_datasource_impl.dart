import 'package:boxpend_flutter_android_app/src/data/datasource/template/template_remote_datasource.dart';
import 'package:boxpend_flutter_android_app/src/data/models/template_model.dart';

class TemplateRemoteDatasourceImpl extends TemplateRemoteDatasource {
  @override
  Future<TemplateModel> getTemplate() {
    final template = TemplateModel(
      id: 1,
      name: "Boxpend",
    );
    return Future.delayed(
      const Duration(milliseconds: 800),
      () async => Future.value(template),
    );
  }
}
