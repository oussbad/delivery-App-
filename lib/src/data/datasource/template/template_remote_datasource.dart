import 'package:boxpend_flutter_android_app/src/data/datasource/template/template_remote_datasource_impl.dart';
import 'package:boxpend_flutter_android_app/src/data/models/template_model.dart';

class TemplateRemoteDatasourceImpl extends TemplateRemoteDatasource {
  @override
  Future<TemplateModel> getTemplate() {
    try {
      const template = TemplateModel(
        id: 1,
        name: "Boxpend",
      );
      return Future.value(template);
    } catch (e) {
      throw UnimplementedError(e.toString());
    }
  }
}
