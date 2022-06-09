import 'package:dartz/dartz.dart';
import 'package:phonon_test/core/models/user.dart';
import 'package:phonon_test/core/utils/exports.dart';

abstract class RemoteDataSource {
  Future<Either<AppError, List<User>?>> fetchUsers(String name);
}
