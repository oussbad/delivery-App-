import 'dart:convert';
import 'package:boxpend_flutter_android_app/src/presentation/legal/models/legal_model.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';

class LegalController extends GetxController {
  static LegalController get to => Get.find();

  Future<List<LegalModel>> loadLegalData(String asset) async {
    final jsonData = await rootBundle.loadString(asset);
    final List<dynamic> data = await json.decode(jsonData);
    List<LegalModel> legalList = data
        .map(
          (item) => LegalModel.fromJson(item),
        )
        .toList();
    return legalList;
  }
}
