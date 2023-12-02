import 'package:boxpend_flutter_android_app/src/app/core/services/local_storage_service.dart';
import 'package:boxpend_flutter_android_app/src/app/core/services/network_service.dart';
import 'package:boxpend_flutter_android_app/src/app/core/services/token_service.dart';
import 'package:boxpend_flutter_android_app/src/app/core/services/url_launcher_service.dart';
import 'package:boxpend_flutter_android_app/src/app/services/local_storage_service_impl.dart';
import 'package:boxpend_flutter_android_app/src/app/services/network_service_impl.dart';
import 'package:boxpend_flutter_android_app/src/app/services/token_service_impl.dart';
import 'package:boxpend_flutter_android_app/src/app/services/url_launcher_service_impl.dart';
import 'package:boxpend_flutter_android_app/src/data/datasource/auth_datasource_impl.dart';
import 'package:boxpend_flutter_android_app/src/data/interfaces/auth_datasource.dart';
import 'package:boxpend_flutter_android_app/src/data/repositories/auth_repository_impl.dart';
import 'package:boxpend_flutter_android_app/src/domain/repositories/auth_repository.dart';
import 'package:boxpend_flutter_android_app/src/domain/usecases/auth/signin_usecase.dart';
import 'package:boxpend_flutter_android_app/src/domain/usecases/auth/signout_usecase.dart';
import 'package:boxpend_flutter_android_app/src/domain/usecases/auth/signup_usecase.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
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
    Get.lazyPut(() => Dio());

    ///
    /// Register App Services
    ///
    await Get.putAsync<URLLauncherService>(() async => URLLauncherServiceImpl());
    await Get.putAsync<NetworkService>(() async => NetworkServiceImpl());
    await Get.putAsync<LocalStorageService>(() async => LocalStorageServiceImpl());
    await Get.putAsync<TokenService>(() async => TokenServiceImpl());
    Get.put<Dio>(Dio());
    await Get.putAsync<ApiService>(() async => DioServiceImpl());

    ///
    /// Register Auth Dependencies
    ///
    Get.lazyPut<AuthDatasource>(() => AuthDatasourceImpl(api: Get.find()));
    Get.lazyPut<AuthRepository>(() => AuthRepositoryImpl(datasource: Get.find()));
    Get.putAsync(() async => SignInUsecase(Get.find()));
    Get.putAsync(() async => SignUpUsecase(Get.find()));
    Get.putAsync(() async => SignOutUsecase(Get.find()));
  }
}
