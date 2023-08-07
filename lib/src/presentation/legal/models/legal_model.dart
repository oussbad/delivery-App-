class LegalModel {
  String? title;
  String? description;
  List<String>? bulleted;

  LegalModel({
    this.title,
    this.description,
    this.bulleted,
  });

  factory LegalModel.fromJson(Map<String, dynamic> json) => LegalModel(
        title: json['title'],
        description: json['description'],
        bulleted:
            json['bulleted'] == null ? [] : json['bulleted'].cast<String>(),
      );
}
