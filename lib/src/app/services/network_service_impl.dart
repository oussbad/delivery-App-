import 'package:boxpend_flutter_android_app/src/app/core/services/network_service.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetworkServiceImpl extends NetworkService {
  final InternetConnectionChecker _checker = InternetConnectionChecker();

  @override
  Future<bool> isConnected() async => await _checker.hasConnection;
}
