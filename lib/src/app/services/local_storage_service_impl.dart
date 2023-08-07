import 'package:boxpend_flutter_android_app/src/app/core/services/local_storage_service.dart';
import 'package:get_storage/get_storage.dart';

class LocalStorageServiceImpl extends LocalStorageService {
  final GetStorage _box = GetStorage();

  @override
  Future<void> save(String key, dynamic value) => _box.write(key, value);

  @override
  dynamic get(String key) => _box.read(key);

  @override
  Future<void> remove(String key) => _box.remove(key);
}
