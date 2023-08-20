import 'package:boxpend_flutter_android_app/src/app/core/services/local_storage_service.dart';
import 'package:boxpend_flutter_android_app/src/app/core/services/network_service.dart';
import 'package:boxpend_flutter_android_app/src/app/services/local_storage_service_impl.dart';
import 'package:boxpend_flutter_android_app/src/app/services/network_service_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:boxpend_flutter_android_app/src/data/datasource/template/template_remote_datasource.dart';
import 'package:boxpend_flutter_android_app/src/data/datasource/template/template_remote_datasource_impl.dart';
import 'package:boxpend_flutter_android_app/src/data/repositories/template_repository_impl.dart';
import 'package:boxpend_flutter_android_app/src/domain/repositories/template_repository.dart';
import 'package:get_storage/get_storage.dart';

import '../core/services/api_service.dart';
import '../services/dio_service_impl.dart';

class DenpendencyInjection {
  static Future<void> init() async {
    ///
    /// Ensures that the WidgetsFlutterBinding is fully initialized
    ///
    WidgetsFlutterBinding.ensureInitialized();

    ///
    /// Init Dependencies
    ///
    await GetStorage().initStorage;

    ///
    /// Register App Services
    ///
    await Get.putAsync<NetworkService>(() async => NetworkServiceImpl());
    await Get.putAsync<LocalStorageService>(
        () async => LocalStorageServiceImpl());
    Get.put<Dio>(Dio());
    await Get.putAsync<ApiService>(() async => DioServiceImpl(Get.find()));

    ///
    /// register Template Dependencies
    ///
    Get.lazyPut<TemplateRemoteDatasource>(
        () => TemplateRemoteDatasourceImpl(api: Get.find()));
    Get.lazyPut<TemplateRepository>(
      () => TemplateRepositoryImpl(datasource: Get.find(), netwrok: Get.find()),
    );
  }
}
