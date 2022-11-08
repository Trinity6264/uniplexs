import 'package:get_it/get_it.dart';
import 'package:uniplexs/app/app.gr.dart';
import 'package:uniplexs/service/navigation.dart';

final locator = GetIt.instance;

// Registering all services here
void registerSetup() {
  locator.registerLazySingleton<AppRouter>(
    () => AppRouter(),
  );
  locator.registerLazySingleton<NavigationService>(
    () => NavigationService(),
  );
  
}