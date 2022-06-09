import 'package:get_it/get_it.dart';
import 'package:phonon_test/core/data_sources/remote_data_source/remote_data_source.dart';
import 'package:phonon_test/core/data_sources/remote_data_source/remote_data_source_impl.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:phonon_test/core/services/http/http_service.dart';
import 'package:phonon_test/core/services/http/http_service_impl.dart';
import 'package:phonon_test/core/utils/exports.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator({bool test = false}) async {
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
  locator.registerLazySingleton<DialogService>(
    () => DialogService(),
  );
  locator.registerLazySingleton<SnackbarService>(
    () => SnackbarService(),
  );
  locator.registerLazySingleton<HttpService>(() => HttpServiceImpl());
  locator.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl());
}
