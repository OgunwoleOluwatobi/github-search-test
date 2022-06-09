import 'package:phonon_test/core/data_sources/remote_data_source/remote_data_source.dart';
import 'package:phonon_test/core/models/user.dart';
import 'package:phonon_test/core/utils/exports.dart';
import 'package:stacked_services/stacked_services.dart';

class UsersListViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final RemoteDataSource _remoteDataSource = locator<RemoteDataSource>();

  List<User>? users;
  bool _loading = false;
  bool get loading => _loading;
  set loading(bool val) {
    _loading = val;
    notifyListeners();
  }

  Future fetchUsers(String name) async{
    loading = true;
    notifyListeners();
    final data = await _remoteDataSource.fetchUsers(name);

    data.fold(
      (l) {
        loading = false;
        notifyListeners();
        flusher(l.message, type: FlusherColorType.error);
      },
      (r) async{
        users = r;
        loading = false;
        notifyListeners();
      }
    );
  }

  // void navigateToDetails(ClientTransactions val) {
  //   _navigationService.navigateTo(
  //     Routes.transactionDetails,
  //     arguments: val
  //   );
  // }
}