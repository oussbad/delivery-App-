import 'package:boxpend_flutter_android_app/src/data/datasource/template/template_remote_datasource.dart';
import 'package:boxpend_flutter_android_app/src/data/models/template_model.dart';

class TemplateRemoteDatasourceImpl extends TemplateRemoteDatasource {
  @override
  Future<TemplateModel> getTemplate() {
    const template = TemplateModel(
      id: 10,
      name: "Boxpend ok",
    );
    return Future.value(template);
  }
}
