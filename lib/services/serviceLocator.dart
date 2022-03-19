// @dart=2.9
import 'package:aviro_health_app/services/localStorage.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  var instance = await LocalStorageService.getInstance();
  locator.registerLazySingleton<LocalStorageService>(() => instance);
  // locator.registerLazySingleton<GlobalServices>(() => GlobalServices());
  // LocalStorageService
}
