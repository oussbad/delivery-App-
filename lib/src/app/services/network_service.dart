import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class Network {
  Future<bool> isConnected();
}

class NetworkService extends Network { 
  @override
  Future<bool> isConnected() async {
    bool isConnected = await InternetConnectionChecker().hasConnection;
    return isConnected;
  } 
}
