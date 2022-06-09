
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:phonon_test/core/data_sources/remote_data_source/remote_data_source.dart';
import 'package:phonon_test/core/models/user.dart';
import 'package:phonon_test/core/utils/exports.dart';

import 'startup_test.mocks.dart';

@GenerateMocks([RemoteDataSource, UsersResponse, User])
void main() {
  test('Setup is working', () async{
    TestWidgetsFlutterBinding.ensureInitialized();

    locator.allowReassignment = true;
    setupLogger(test: true);

    locator.registerLazySingleton<RemoteDataSource>(() => MockRemoteDataSource());

    await setupLocator(test: true);

    await locator.allReady();
  });
}