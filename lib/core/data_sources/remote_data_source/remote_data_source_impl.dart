import 'package:dartz/dartz.dart';
import 'package:phonon_test/core/data_sources/remote_data_source/remote_data_source.dart';
import 'package:phonon_test/core/models/user.dart';
import 'package:phonon_test/core/utils/exports.dart';

class RemoteDataSourceImpl extends RemoteDataSource {
  final HttpService _httpService = locator<HttpService>();

  @override
  Future<Either<AppError, List<User>?>> fetchUsers(String name) async {

    try {
      final raw = await _httpService.getHttp('/search/users?q=$name');
      if (raw['message'] == null) {
        return Right(UsersResponse.fromJson(raw).items);
      } else {
        return Left(AppError(
            errorType: AppErrorType.network,
            message: raw['message'] ?? 'An Error Occured'));
      }
    } on NetworkException catch (e) {
      return Left(
          AppError(errorType: AppErrorType.network, message: e.message));
    } on SocketException catch (e) {
      return Left(
          AppError(errorType: AppErrorType.network, message: e.message));
    } on AuthException catch (e) {
      return Left(AppError(errorType: AppErrorType.api, message: e.message));
    } on Exception catch (e) {
      return Left(AppError(errorType: AppErrorType.api, message: '$e'));
    }
  }

  @override
  Future<Either<AppError, int>> fetchRepoCount(String name) async {

    try {
      final raw = await _httpService.getHttp('/users/$name');
      if (raw['message'] == null) {
        return Right(raw['public_repos']);
      } else {
        return Left(AppError(
            errorType: AppErrorType.network,
            message: raw['message'] ?? 'An Error Occured'));
      }
    } on NetworkException catch (e) {
      return Left(
          AppError(errorType: AppErrorType.network, message: e.message));
    } on SocketException catch (e) {
      return Left(
          AppError(errorType: AppErrorType.network, message: e.message));
    } on AuthException catch (e) {
      return Left(AppError(errorType: AppErrorType.api, message: e.message));
    } on Exception catch (e) {
      return Left(AppError(errorType: AppErrorType.api, message: '$e'));
    }
  }
}
