import 'package:boxpend_flutter_android_app/src/app/core/services/local_storage_service.dart';
import 'package:get_storage/get_storage.dart';

class LocalStorageServiceImpl extends LocalStorageService {
  final GetStorage _box = GetStorage();

  Future<dynamic> init() async {
    return _box.initStorage;
  }

  @override
  Future<void> save(String key, dynamic value) {
    return _box.writeIfNull(key, value);
  }

  @override
  dynamic get(String key) {
    return _box.read(key);
  }

  @override
  Future<void> remove(String key) {
    return _box.remove(key);
  }
}
