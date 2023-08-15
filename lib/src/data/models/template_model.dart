import 'package:boxpend_flutter_android_app/src/domain/entities/template_entity.dart';

class TemplateModel extends Template {
  TemplateModel({
    required super.id,
    required super.name,
  });

  factory TemplateModel.fromJson(Map<String, dynamic> json) => TemplateModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
