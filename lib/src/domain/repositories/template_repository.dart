import 'package:boxpend_flutter_android_app/src/domain/entities/template_entitiy.dart';

abstract class TemplateRepository {
  Future<List<Template>> getTemplates();
}
