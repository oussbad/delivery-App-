import 'package:boxpend_flutter_android_app/src/app/core/services/network_service.dart';
import 'package:boxpend_flutter_android_app/src/app/services/network_service_impl.dart';
import 'package:get/get.dart';
import 'package:boxpend_flutter_android_app/src/data/datasource/template/template_remote_datasource.dart';
import 'package:boxpend_flutter_android_app/src/data/datasource/template/template_remote_datasource_impl.dart';
import 'package:boxpend_flutter_android_app/src/data/repositories/template_repository_impl.dart';
import 'package:boxpend_flutter_android_app/src/domain/repositories/template_repository.dart';

class DenpendencyInjection {
  static Future<void> init() async {
    await Get.putAsync<NetworkService>(() async => NetworkServiceImpl());
    Get.lazyPut<TemplateRemoteDatasource>(() => TemplateRemoteDatasourceImpl());
    Get.lazyPut<TemplateRepository>(() => TemplateRepositoryImpl(
          datasource: Get.find(),
          netwrok: Get.find(),
        ));
  }
}
