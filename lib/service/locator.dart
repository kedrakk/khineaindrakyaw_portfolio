import 'package:get_it/get_it.dart';
import 'package:kedk_portfolio/service/orientation_service.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<OrientationService>(OrientationService());
}
