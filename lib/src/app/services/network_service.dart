import 'package:boxpend_flutter_android_app/src/app/core/contracts/network.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetworkService extends Network {
  final InternetConnectionChecker _checker = InternetConnectionChecker();

  @override
  Future<bool> isConnected() async {
    bool isConnected = await _checker.hasConnection;
    return isConnected;
  }
}
