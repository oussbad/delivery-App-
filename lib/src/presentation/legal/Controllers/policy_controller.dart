import 'dart:convert';
import 'package:boxpend_flutter_android_app/src/app/resources/assets_manager.dart';
import 'package:boxpend_flutter_android_app/src/presentation/legal/models/legal_model.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';

class PolicyController extends GetxController {
  static PolicyController get to => Get.find();

  Future<List<LegalModel>> loadPolicyData() async {
    final jsonData = await rootBundle.loadString(AssetsManager.policy);
    final List<dynamic> data = await json.decode(jsonData);
    List<LegalModel> legalList = data
        .map(
          (item) => LegalModel.fromJson(item),
        )
        .toList();
    return legalList;
  }
}
