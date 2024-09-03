import 'package:best_store/utils/endpoints.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../utils/network_service.dart';

part "network_service_provider.g.dart";

@riverpod
NetworkService networkService(NetworkServiceRef ref) {
  return NetworkService(baseUrl: Endpoints.baseUrl);
}
