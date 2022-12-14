import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkChecker implements NetworkInfo {
  final InternetConnectionChecker checker;
  NetworkChecker(this.checker);

  @override
  Future<bool> get isConnected => checker.hasConnection;
}
